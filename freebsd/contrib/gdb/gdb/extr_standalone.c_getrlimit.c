
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {scalar_t__ rlim_cur; } ;


 scalar_t__ memory_limit ;
 scalar_t__ next_free ;

getrlimit (struct rlimit *addr)
{
  addr->rlim_cur = memory_limit - next_free;
}
