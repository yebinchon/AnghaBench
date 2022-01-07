
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*,int) ;

void fpecatch(int n)
{
 FATAL("floating point exception %d", n);
}
