
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int *) ;
 scalar_t__* ipf_devfiles ;
 int ** ipf_devs ;
 int ipf_event_dereg () ;
 int ipf_fbsd_sysctl_destroy () ;
 int ipf_pfil_unhook () ;
 int ipf_unload_all () ;
 char* ipfilter_version ;
 int printf (char*,char*) ;

__attribute__((used)) static int
ipf_modunload()
{
 int error, i;

 ipf_event_dereg();

 ipf_fbsd_sysctl_destroy();

 error = ipf_pfil_unhook();
 if (error != 0)
  return error;

 for (i = 0; ipf_devfiles[i]; i++) {
  if (ipf_devs[i] != ((void*)0))
   destroy_dev(ipf_devs[i]);
 }

 ipf_unload_all();

 printf("%s unloaded\n", ipfilter_version);

 return (0);
}
