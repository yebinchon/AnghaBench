
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int printf (char*,int) ;
 int* tcpflags ;

void
print_flags(u_int8_t f)
{
 int i;

 for (i = 0; tcpflags[i]; ++i)
  if (f & (1 << i))
   printf("%c", tcpflags[i]);
}
