
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ memory_limit ;
 scalar_t__ next_free ;

char *
sbrk (int amount)
{
  if (next_free + amount > memory_limit)
    return (char *) -1;
  next_free += amount;
  return next_free - amount;
}
