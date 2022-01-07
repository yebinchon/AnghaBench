
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int module_conf; } ;
typedef int oldwd ;


 int chdir (char*) ;
 int check_auth (struct config_file*) ;
 int check_fwd (struct config_file*) ;
 int check_hints (struct config_file*) ;
 int check_mod (struct config_file*,int ) ;
 struct config_file* config_create () ;
 int config_delete (struct config_file*) ;
 int config_read (struct config_file*,char const*,int *) ;
 int errno ;
 int exit (int) ;
 int fatal_exit (char*) ;
 int getcwd (char*,int) ;
 int iter_get_funcblock () ;
 int log_err (char*,char*,...) ;
 int morechecks (struct config_file*) ;
 int print_option (struct config_file*,char const*,int) ;
 int printf (char*,char const*) ;
 int pythonmod_get_funcblock () ;
 int strerror (int ) ;
 scalar_t__ strstr (int ,char*) ;
 int val_get_funcblock () ;

__attribute__((used)) static void
checkconf(const char* cfgfile, const char* opt, int final)
{
 char oldwd[4096];
 struct config_file* cfg = config_create();
 if(!cfg)
  fatal_exit("out of memory");
 oldwd[0] = 0;
 if(!getcwd(oldwd, sizeof(oldwd))) {
  log_err("cannot getcwd: %s", strerror(errno));
  oldwd[0] = 0;
 }
 if(!config_read(cfg, cfgfile, ((void*)0))) {

  config_delete(cfg);
  exit(1);
 }
 if(oldwd[0] && chdir(oldwd) == -1)
  log_err("cannot chdir(%s): %s", oldwd, strerror(errno));
 if(opt) {
  print_option(cfg, opt, final);
  config_delete(cfg);
  return;
 }
 morechecks(cfg);
 check_mod(cfg, iter_get_funcblock());
 check_mod(cfg, val_get_funcblock());




 check_fwd(cfg);
 check_hints(cfg);
 check_auth(cfg);
 printf("unbound-checkconf: no errors in %s\n", cfgfile);
 config_delete(cfg);
}
