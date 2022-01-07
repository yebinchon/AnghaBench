
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {int str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* auto_trust_anchor_file_list; int pidfile; } ;


 int config_get_option (struct config_file*,char const*,int ,int ) ;
 int config_print_func ;
 int fatal_exit (char*,...) ;
 char* fname_after_chroot (int ,struct config_file*,int) ;
 int free (char*) ;
 int printf (char*,char*) ;
 int stdout ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
print_option(struct config_file* cfg, const char* opt, int final)
{
 if(strcmp(opt, "pidfile") == 0 && final) {
  char *p = fname_after_chroot(cfg->pidfile, cfg, 1);
  if(!p) fatal_exit("out of memory");
  printf("%s\n", p);
  free(p);
  return;
 }
 if(strcmp(opt, "auto-trust-anchor-file") == 0 && final) {
  struct config_strlist* s = cfg->auto_trust_anchor_file_list;
  for(; s; s=s->next) {
   char *p = fname_after_chroot(s->str, cfg, 1);
   if(!p) fatal_exit("out of memory");
   printf("%s\n", p);
   free(p);
  }
  return;
 }
 if(!config_get_option(cfg, opt, config_print_func, stdout))
  fatal_exit("cannot print option '%s'", opt);
}
