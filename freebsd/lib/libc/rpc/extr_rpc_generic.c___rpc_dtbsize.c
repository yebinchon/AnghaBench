
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_max; } ;


 int RLIMIT_NOFILE ;
 scalar_t__ getrlimit (int ,struct rlimit*) ;

int
__rpc_dtbsize(void)
{
 static int tbsize;
 struct rlimit rl;

 if (tbsize) {
  return (tbsize);
 }
 if (getrlimit(RLIMIT_NOFILE, &rl) == 0) {
  return (tbsize = (int)rl.rlim_max);
 }




 return (32);
}
