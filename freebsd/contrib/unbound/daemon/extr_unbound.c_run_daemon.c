
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daemon {scalar_t__ pidfile; int chroot; int need_to_exit; } ;
struct config_file {int chrootdir; int logfile; int use_syslog; } ;


 scalar_t__ ENOENT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int PACKAGE_STRING ;
 int VERB_ALGO ;
 int VERB_OPS ;
 int apply_settings (struct daemon*,struct config_file*,int,int,char const*) ;
 int close (int) ;
 struct config_file* config_create () ;
 int config_delete (struct config_file*) ;
 int config_lookup_uid (struct config_file*) ;
 int config_read (struct config_file*,char const*,int ) ;
 int daemon_cleanup (struct daemon*) ;
 int daemon_delete (struct daemon*) ;
 int daemon_fork (struct daemon*) ;
 struct daemon* daemon_init () ;
 int daemon_open_shared_ports (struct daemon*) ;
 scalar_t__ errno ;
 int fatal_exit (char*,...) ;
 int log_init (int ,int ,int ) ;
 int log_warn (char*) ;
 int open (scalar_t__,int,int) ;
 int perform_setup (struct daemon*,struct config_file*,int,char const**,int) ;
 int unlink (scalar_t__) ;
 int verbose (int ,char*,...) ;

__attribute__((used)) static void
run_daemon(const char* cfgfile, int cmdline_verbose, int debug_mode, const char* log_default_identity, int need_pidfile)
{
 struct config_file* cfg = ((void*)0);
 struct daemon* daemon = ((void*)0);
 int done_setup = 0;

 if(!(daemon = daemon_init()))
  fatal_exit("alloc failure");
 while(!daemon->need_to_exit) {
  if(done_setup)
   verbose(VERB_OPS, "Restart of %s.", PACKAGE_STRING);
  else verbose(VERB_OPS, "Start of %s.", PACKAGE_STRING);


  if(!(cfg = config_create()))
   fatal_exit("Could not alloc config defaults");
  if(!config_read(cfg, cfgfile, daemon->chroot)) {
   if(errno != ENOENT)
    fatal_exit("Could not read config file: %s."
     " Maybe try unbound -dd, it stays on "
     "the commandline to see more errors, "
     "or unbound-checkconf", cfgfile);
   log_warn("Continuing with default config settings");
  }
  apply_settings(daemon, cfg, cmdline_verbose, debug_mode, log_default_identity);
  if(!done_setup)
   config_lookup_uid(cfg);


  if(!daemon_open_shared_ports(daemon))
   fatal_exit("could not open ports");
  if(!done_setup) {
   perform_setup(daemon, cfg, debug_mode, &cfgfile, need_pidfile);
   done_setup = 1;
  } else {

   if(!cfg->use_syslog)
    log_init(cfg->logfile, 0, cfg->chrootdir);
  }

  daemon_fork(daemon);


  verbose(VERB_ALGO, "cleanup.");
  daemon_cleanup(daemon);
  config_delete(cfg);
 }
 verbose(VERB_ALGO, "Exit cleanup.");


 if(daemon->pidfile) {
  int fd;

  fd = open(daemon->pidfile, O_WRONLY | O_TRUNC, 0644);
  if(fd != -1)
   close(fd);

  unlink(daemon->pidfile);
 }
 daemon_delete(daemon);
}
