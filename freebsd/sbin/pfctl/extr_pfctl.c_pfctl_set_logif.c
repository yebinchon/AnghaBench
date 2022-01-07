
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfctl {int ifname_set; int opts; int * ifname; } ;


 int PFCTL_FLAG_OPTION ;
 int PF_OPT_VERBOSE ;
 int errx (int,char*) ;
 int free (int *) ;
 int loadopt ;
 int printf (char*,char*) ;
 int strcmp (char*,char*) ;
 int * strdup (char*) ;

int
pfctl_set_logif(struct pfctl *pf, char *ifname)
{

 if ((loadopt & PFCTL_FLAG_OPTION) == 0)
  return (0);

 if (!strcmp(ifname, "none")) {
  free(pf->ifname);
  pf->ifname = ((void*)0);
 } else {
  pf->ifname = strdup(ifname);
  if (!pf->ifname)
   errx(1, "pfctl_set_logif: strdup");
 }
 pf->ifname_set = 1;

 if (pf->opts & PF_OPT_VERBOSE)
  printf("set loginterface %s\n", ifname);

 return (0);
}
