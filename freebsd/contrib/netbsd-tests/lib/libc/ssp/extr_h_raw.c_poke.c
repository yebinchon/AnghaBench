
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
poke(int *b, size_t index)
{
 size_t i;
 volatile int sum = 0;

 b[index] = 42;
 for (i = 0; i < 10; i++)
  sum += b[i];
}
