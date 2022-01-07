
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int current_concurrency ;

int
_pthread_setconcurrency(int new_level)
{
 int ret;

 if (new_level < 0) {
  ret = EINVAL;
 } else {
  current_concurrency = new_level;
  ret = 0;
 }
 return (ret);
}
