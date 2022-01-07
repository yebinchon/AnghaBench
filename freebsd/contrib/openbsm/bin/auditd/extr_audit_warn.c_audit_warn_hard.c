
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* HARDLIM_WARN ;
 int auditwarnlog (char**) ;

int
audit_warn_hard(char *filename)
{
 char *args[3];

 args[0] = HARDLIM_WARN;
 args[1] = filename;
 args[2] = ((void*)0);

 return (auditwarnlog(args));
}
