
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {void* regcache_data; } ;



void *
inferior_regcache_data (struct thread_info *inferior)
{
  return inferior->regcache_data;
}
