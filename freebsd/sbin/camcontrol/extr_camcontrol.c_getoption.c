
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct camcontrol_opts {char* subopt; int argnum; int cmdnum; int * optname; } ;
typedef int camcontrol_optret ;
typedef int cam_argmask ;


 int CC_OR_AMBIGUOUS ;
 int CC_OR_FOUND ;
 int CC_OR_NOT_FOUND ;
 int strlen (char*) ;
 scalar_t__ strncmp (int *,char*,int ) ;

camcontrol_optret
getoption(struct camcontrol_opts *table, char *arg, uint32_t *cmdnum,
   cam_argmask *argnum, const char **subopt)
{
 struct camcontrol_opts *opts;
 int num_matches = 0;

 for (opts = table; (opts != ((void*)0)) && (opts->optname != ((void*)0));
      opts++) {
  if (strncmp(opts->optname, arg, strlen(arg)) == 0) {
   *cmdnum = opts->cmdnum;
   *argnum = opts->argnum;
   *subopt = opts->subopt;
   if (++num_matches > 1)
    return (CC_OR_AMBIGUOUS);
  }
 }

 if (num_matches > 0)
  return (CC_OR_FOUND);
 else
  return (CC_OR_NOT_FOUND);
}
