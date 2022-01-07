
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adist_host {int adh_worker_pid; int adh_trail_fd; int adh_name; int adh_role; int * adh_remote; } ;
struct adist_config {int adc_timeout; } ;
typedef int sigset_t ;
typedef int pthread_t ;
typedef int pid_t ;


 int ADIST_USER ;
 int EX_CONFIG ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int PJDLOG_ASSERT (int) ;
 int PJDLOG_VERIFY (int) ;
 int SIG_SETMASK ;
 struct adist_config* adcfg ;
 struct adist_host* adhost ;
 int descriptors_cleanup (struct adist_host*) ;
 int disk_thread ;
 int exit (int ) ;
 int fork () ;
 int init_environment () ;
 int pjdlog_debug_get () ;
 int pjdlog_debug_set (int) ;
 int pjdlog_errno (int ,char*) ;
 int pjdlog_info (char*) ;
 int pjdlog_init (int) ;
 int pjdlog_mode_get () ;
 int pjdlog_prefix_set (char*,int ,int ) ;
 int proto_close (int *) ;
 int proto_timeout (int *,int ) ;
 int pthread_create (int *,int *,int ,struct adist_host*) ;
 int receiver_connect () ;
 int receiver_directory_open () ;
 int recv_thread ;
 int role2str (int ) ;
 scalar_t__ sandbox (int ,int,char*,int ,int ) ;
 int send_thread (struct adist_host*) ;
 int setproctitle (char*,int ,int ) ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

void
adist_receiver(struct adist_config *config, struct adist_host *adh)
{
 sigset_t mask;
 pthread_t td;
 pid_t pid;
 int error, mode, debuglevel;

 pid = fork();
 if (pid == -1) {
  pjdlog_errno(LOG_ERR, "Unable to fork");
  proto_close(adh->adh_remote);
  adh->adh_remote = ((void*)0);
  return;
 }

 if (pid > 0) {

  proto_close(adh->adh_remote);
  adh->adh_remote = ((void*)0);
  adh->adh_worker_pid = pid;
  return;
 }

 adcfg = config;
 adhost = adh;
 mode = pjdlog_mode_get();
 debuglevel = pjdlog_debug_get();

 descriptors_cleanup(adhost);



 pjdlog_init(mode);
 pjdlog_debug_set(debuglevel);
 pjdlog_prefix_set("[%s] (%s) ", adhost->adh_name,
     role2str(adhost->adh_role));




 PJDLOG_VERIFY(sigemptyset(&mask) == 0);
 PJDLOG_VERIFY(sigprocmask(SIG_SETMASK, &mask, ((void*)0)) == 0);


 if (proto_timeout(adhost->adh_remote, adcfg->adc_timeout) == -1)
  pjdlog_errno(LOG_WARNING, "Unable to set connection timeout");

 init_environment();

 adhost->adh_trail_fd = -1;
 receiver_directory_open();

 if (sandbox(ADIST_USER, 1, "auditdistd: %s (%s)",
     role2str(adhost->adh_role), adhost->adh_name) != 0) {
  exit(EX_CONFIG);
 }
 pjdlog_info("Privileges successfully dropped.");

 receiver_connect();

 error = pthread_create(&td, ((void*)0), recv_thread, adhost);
 PJDLOG_ASSERT(error == 0);
 error = pthread_create(&td, ((void*)0), disk_thread, adhost);
 PJDLOG_ASSERT(error == 0);
 (void)send_thread(adhost);
}
