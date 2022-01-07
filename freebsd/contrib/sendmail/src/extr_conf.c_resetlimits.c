
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; int rlim_max; } ;


 int FD_SETSIZE ;
 int RLIMIT_CPU ;
 int RLIMIT_FSIZE ;
 int RLIMIT_NOFILE ;
 int RLIM_INFINITY ;
 scalar_t__ errno ;
 int setrlimit (int ,struct rlimit*) ;
 int ulimit (int,int) ;

void
resetlimits()
{
 errno = 0;
}
