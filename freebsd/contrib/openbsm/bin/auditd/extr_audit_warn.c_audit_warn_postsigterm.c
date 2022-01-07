
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* POSTSIGTERM_WARN ;
 int auditwarnlog (char**) ;

int
audit_warn_postsigterm(void)
{
 char *args[2];

 args[0] = POSTSIGTERM_WARN;
 args[1] = ((void*)0);

 return (auditwarnlog(args));
}
