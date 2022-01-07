
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int NBBY ;
 int fls (int) ;

int
__clzsi2(int x)
{
       return (sizeof(x) * NBBY - fls(x));
}
