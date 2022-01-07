
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;


 int NBBY ;
 int ffs (int) ;

int
__ctzsi2(int x)
{
       if (x == 0)
               return (sizeof(x) * NBBY);
       return (ffs(x) - 1);
}
