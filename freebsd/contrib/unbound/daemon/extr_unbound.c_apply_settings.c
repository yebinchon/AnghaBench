
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daemon {int dummy; } ;
struct config_file {scalar_t__ do_daemonize; scalar_t__ use_systemd; int * logfile; scalar_t__ use_syslog; scalar_t__ verbosity; } ;


 int checkrlimits (struct config_file*) ;
 int daemon_apply_cfg (struct daemon*,struct config_file*) ;
 int free (int *) ;
 int log_ident_set_fromdefault (struct config_file*,char const*) ;
 int log_warn (char*) ;
 scalar_t__ verbosity ;

__attribute__((used)) static void
apply_settings(struct daemon* daemon, struct config_file* cfg,
 int cmdline_verbose, int debug_mode, const char* log_default_identity)
{

 verbosity = cmdline_verbose + cfg->verbosity;
 if (debug_mode > 1) {
  cfg->use_syslog = 0;
  free(cfg->logfile);
  cfg->logfile = ((void*)0);
 }
 daemon_apply_cfg(daemon, cfg);
 checkrlimits(cfg);

 if (cfg->use_systemd && cfg->do_daemonize) {
  log_warn("use-systemd and do-daemonize should not be enabled at the same time");
 }

 log_ident_set_fromdefault(cfg, log_default_identity);
}
