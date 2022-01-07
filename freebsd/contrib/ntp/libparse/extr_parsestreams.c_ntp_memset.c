
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void
ntp_memset(
 char *a,
 int x,
 int c
 )
{
 while (c-- > 0)
     *a++ = x;
}
