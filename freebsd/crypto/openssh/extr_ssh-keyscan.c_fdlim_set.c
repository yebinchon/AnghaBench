
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_cur; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;
 int setdtablesize (int) ;
 scalar_t__ setrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int
fdlim_set(int lim)
{




 if (lim <= 0)
  return (-1);
 return (0);
}
