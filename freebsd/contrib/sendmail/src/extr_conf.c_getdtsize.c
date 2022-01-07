
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int NOFILE ;
 int RLIMIT_NOFILE ;
 int _SC_OPEN_MAX ;
 int getdtablesize () ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int sysconf (int ) ;

int
getdtsize()
{
 return NOFILE;


}
