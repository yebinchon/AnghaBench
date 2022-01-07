
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sbmaskrune (int,int) ;

int
digittoint(int c)
{
 return (__sbmaskrune(c, 0xFF));
}
