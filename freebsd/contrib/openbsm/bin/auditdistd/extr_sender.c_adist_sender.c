
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adist_host {int adh_worker_pid; int adh_reset; int adh_remoteaddr; int adh_name; int adh_role; int adh_directory; int * adh_conn; } ;
struct adist_config {int dummy; } ;
typedef int pthread_t ;
typedef int pid_t ;


 int ADIST_USER ;
 int EX_CONFIG ;
 int EX_OSFILE ;
 int LOG_ERR ;
 int PJDLOG_ASSERT (int) ;
 struct adist_config* adcfg ;
 struct adist_host* adhost ;
 int * adist_trail ;
 int descriptors_assert (struct adist_host*,int) ;
 int descriptors_cleanup (struct adist_host*) ;
 int exit (int ) ;
 int fork () ;
 int guard_thread ;
 int init_environment () ;
 int pjdlog_debug_get () ;
 int pjdlog_debug_set (int) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_info (char*,...) ;
 int pjdlog_init (int) ;
 int pjdlog_mode_get () ;
 int pjdlog_prefix_set (char*,int ,int ) ;
 int proto_close (int *) ;
 int proto_connect (int *,char*,int,int **) ;
 int proto_recv (int *,int *,int ) ;
 int proto_send (int *,int *,int ) ;
 int pthread_create (int *,int *,int ,int *) ;
 int read_thread (int *) ;
 int recv_thread ;
 int role2str (int ) ;
 scalar_t__ sandbox (int ,int,char*,int ,int ) ;
 int send_thread ;
 scalar_t__ sender_connect () ;
 int setproctitle (char*,int ,int ) ;
 int trail_dirfd (int *) ;
 int * trail_new (int ,int) ;
 int wait_for_dir_init (int ) ;

void
adist_sender(struct adist_config *config, struct adist_host *adh)
{
 pthread_t td;
 pid_t pid;
 int error, mode, debuglevel;





 if (proto_connect(((void*)0), "socketpair://", -1, &adh->adh_conn) == -1) {
  pjdlog_errno(LOG_ERR,
      "Unable to create connection sockets between child and parent");
  return;
 }

 pid = fork();
 if (pid == -1) {
  pjdlog_errno(LOG_ERR, "Unable to fork");
  proto_close(adh->adh_conn);
  adh->adh_conn = ((void*)0);
  return;
 }

 if (pid > 0) {

  adh->adh_worker_pid = pid;

  proto_recv(adh->adh_conn, ((void*)0), 0);
  return;
 }

 adcfg = config;
 adhost = adh;

 mode = pjdlog_mode_get();
 debuglevel = pjdlog_debug_get();


 proto_send(adhost->adh_conn, ((void*)0), 0);

 descriptors_cleanup(adhost);





 pjdlog_init(mode);
 pjdlog_debug_set(debuglevel);
 pjdlog_prefix_set("[%s] (%s) ", adhost->adh_name,
     role2str(adhost->adh_role));
 adist_trail = trail_new(adhost->adh_directory, 0);
 if (adist_trail == ((void*)0))
  exit(EX_OSFILE);

 if (sandbox(ADIST_USER, 1, "auditdistd: %s (%s)",
     role2str(adhost->adh_role), adhost->adh_name) != 0) {
  exit(EX_CONFIG);
 }
 pjdlog_info("Privileges successfully dropped.");





 (void)wait_for_dir_init(trail_dirfd(adist_trail));

 init_environment();
 if (sender_connect() == 0) {
  pjdlog_info("Successfully connected to %s.",
      adhost->adh_remoteaddr);
 }
 adhost->adh_reset = 1;





 error = pthread_create(&td, ((void*)0), guard_thread, ((void*)0));
 PJDLOG_ASSERT(error == 0);
 error = pthread_create(&td, ((void*)0), send_thread, ((void*)0));
 PJDLOG_ASSERT(error == 0);
 error = pthread_create(&td, ((void*)0), recv_thread, ((void*)0));
 PJDLOG_ASSERT(error == 0);
 (void)read_thread(((void*)0));
}
