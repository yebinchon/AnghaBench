
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int size_to_count(int size)
{
 if (size >= (1 << 20))
  return 100;
 else if (size >= (1 << 16))
  return 1000;
 else if (size >= (1 << 10))
  return 10000;
 else
  return 100000;
}
