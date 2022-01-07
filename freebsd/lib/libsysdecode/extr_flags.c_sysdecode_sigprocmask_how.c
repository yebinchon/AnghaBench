
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* lookup_value (int ,int) ;
 int sigprocmaskhow ;

const char *
sysdecode_sigprocmask_how(int how)
{

 return (lookup_value(sigprocmaskhow, how));
}
