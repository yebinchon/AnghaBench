
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SOFTLIM_ALL_WARN ;
 int auditwarnlog (char**) ;

int
audit_warn_allsoft(void)
{
 char *args[2];

 args[0] = SOFTLIM_ALL_WARN;
 args[1] = ((void*)0);

 return (auditwarnlog(args));
}
