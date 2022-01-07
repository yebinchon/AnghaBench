
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* EXPIRED_WARN ;
 int auditwarnlog (char**) ;

int
audit_warn_expired(char *filename)
{
 char *args[3];

 args[0] = EXPIRED_WARN;
 args[1] = filename;
 args[2] = ((void*)0);

 return (auditwarnlog(args));
}
