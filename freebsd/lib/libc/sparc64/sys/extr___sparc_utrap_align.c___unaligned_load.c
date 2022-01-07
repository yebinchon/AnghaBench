
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_char ;



__attribute__((used)) static u_long
__unaligned_load(u_char *p, int size)
{
 u_long val;
 int i;

 val = 0;
 for (i = 0; i < size; i++)
  val = (val << 8) | p[i];
 return (val);
}
