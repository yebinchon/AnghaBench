
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int IPL_LOGSIZE ;
 int ipf_cdevsw ;
 char** ipf_devfiles ;
 int ** ipf_devs ;
 int ipf_event_reg () ;
 scalar_t__ ipf_fbsd_sysctl_create () ;
 scalar_t__ ipf_load_all () ;
 int ipf_pfil_hook () ;
 int * make_dev (int *,int,int ,int ,int,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
ipf_modload()
{
 char *c, *str;
 int i, j, error;

 if (ipf_load_all() != 0)
  return EIO;

 if (ipf_fbsd_sysctl_create() != 0) {
  return EIO;
 }

 for (i = 0; i < IPL_LOGSIZE; i++)
  ipf_devs[i] = ((void*)0);
 for (i = 0; (str = ipf_devfiles[i]); i++) {
  c = ((void*)0);
  for(j = strlen(str); j > 0; j--)
   if (str[j] == '/') {
    c = str + j + 1;
    break;
   }
  if (!c)
   c = str;
  ipf_devs[i] = make_dev(&ipf_cdevsw, i, 0, 0, 0600, "%s", c);
 }

 error = ipf_pfil_hook();
 if (error != 0)
  return error;
 ipf_event_reg();

 return 0;
}
