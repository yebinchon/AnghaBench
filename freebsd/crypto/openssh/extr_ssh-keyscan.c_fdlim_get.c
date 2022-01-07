
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; scalar_t__ rlim_cur; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ RLIM_INFINITY ;
 int SSH_SYSFDMAX ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int
fdlim_get(int hard)
{
 return SSH_SYSFDMAX;

}
