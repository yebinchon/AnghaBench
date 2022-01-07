
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SOFTLIM_WARN ;
 int auditwarnlog (char**) ;

int
audit_warn_soft(char *filename)
{
 char *args[3];

 args[0] = SOFTLIM_WARN;
 args[1] = filename;
 args[2] = ((void*)0);

 return (auditwarnlog(args));
}
