
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int t_Handle ;


 int XX_LockSpinlock (int ) ;

uint32_t
XX_LockIntrSpinlock(t_Handle h_Spinlock)
{

 XX_LockSpinlock(h_Spinlock);
 return (0);
}
