
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int rlim_max; } ;


 int MIN (int,int) ;
 int RLIMIT_NOFILE ;
 int RLIM_INFINITY ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

__attribute__((used)) static int get_maxfds(void)
{
 struct rlimit rlim;

 if (getrlimit(RLIMIT_NOFILE, &rlim) == 0) {
  if (rlim.rlim_max == RLIM_INFINITY)
   return 512;
  return MIN(rlim.rlim_max / 2, 512);
 }

 return 512;
}
