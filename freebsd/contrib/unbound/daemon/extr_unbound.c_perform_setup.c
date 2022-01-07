
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
struct passwd {int dummy; } ;
struct daemon {char* pidfile; void* chroot; int connect_sslctx; int listen_sslctx; int rc; } ;
struct TYPE_3__ {TYPE_2__* first; } ;
struct config_file {char* username; char* chrootdir; char* pidfile; char* directory; scalar_t__ use_syslog; int logfile; scalar_t__ do_daemonize; int tls_win_cert; int tls_cert_bundle; TYPE_1__ tls_session_ticket_keys; scalar_t__* tls_ciphersuites; scalar_t__* tls_ciphers; int ssl_service_pem; scalar_t__* ssl_service_key; } ;
struct TYPE_4__ {scalar_t__* str; } ;


 scalar_t__ LOGIN_SETALL ;
 unsigned int LOGIN_SETGROUP ;
 unsigned int LOGIN_SETUSER ;
 int SSL_CTX_set_cipher_list (int ,scalar_t__*) ;
 int SSL_CTX_set_ciphersuites (int ,scalar_t__*) ;
 int VERB_QUERY ;
 scalar_t__ cfg_gid ;
 scalar_t__ cfg_uid ;
 scalar_t__ chdir (char*) ;
 int checkoldpid (char*,int) ;
 int chown (char*,scalar_t__,scalar_t__) ;
 scalar_t__ chroot (char*) ;
 int connect_sslctx_create (int *,int *,int ,int ) ;
 int daemon_remote_create (struct config_file*) ;
 int detach () ;
 int endpwent () ;
 int errno ;
 int fatal_exit (char*,...) ;
 char* fname_after_chroot (char*,struct config_file*,int) ;
 int free (char*) ;
 int getpid () ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ initgroups (char*,scalar_t__) ;
 int listen_sslctx_create (scalar_t__*,int ,int *) ;
 int listen_sslctx_setup_ticket_keys (int ,TYPE_2__*) ;
 int log_err (char*) ;
 int log_init (int ,scalar_t__,char*) ;
 int log_warn (char*,char*,int ) ;
 scalar_t__ setgid (scalar_t__) ;
 scalar_t__ setregid (scalar_t__,scalar_t__) ;
 scalar_t__ setresgid (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ setresuid (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ setreuid (scalar_t__,scalar_t__) ;
 scalar_t__ setuid (scalar_t__) ;
 scalar_t__ setusercontext (int *,struct passwd*,scalar_t__,unsigned int) ;
 void* strdup (char*) ;
 int strerror (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int verbose (int ,char*,...) ;
 int w_config_adjust_directory (struct config_file*) ;
 int writepid (char*,int ) ;

__attribute__((used)) static void
perform_setup(struct daemon* daemon, struct config_file* cfg, int debug_mode,
 const char** cfgfile, int need_pidfile)
{
 if(cfg->use_syslog) {
  log_init(cfg->logfile, cfg->use_syslog, cfg->chrootdir);
 }
 if(!debug_mode && cfg->do_daemonize) {
  detach();
 }
 (void)daemon;
 (void)need_pidfile;
 (void)cfgfile;


 if(cfg->directory && cfg->directory[0]) {
  char* dir = cfg->directory;
  if(cfg->chrootdir && cfg->chrootdir[0] &&
   strncmp(dir, cfg->chrootdir,
   strlen(cfg->chrootdir)) == 0)
   dir += strlen(cfg->chrootdir);
  if(dir[0]) {
   if(chdir(dir)) {
    fatal_exit("Could not chdir to %s: %s",
     dir, strerror(errno));
   }
   verbose(VERB_QUERY, "chdir to %s", dir);
  }
 }
 if(!cfg->use_syslog)
  log_init(cfg->logfile, cfg->use_syslog, cfg->chrootdir);
}
