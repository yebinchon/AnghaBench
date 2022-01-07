
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;



__attribute__((used)) static void
__unaligned_store(u_char *p, u_long val, int size)
{
 int i;

 for (i = 0; i < size; i++)
  p[i] = val >> ((size - i - 1) * 8);
}
