
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int t_Handle ;


 int XX_UnlockSpinlock (int ) ;

void
XX_UnlockIntrSpinlock(t_Handle h_Spinlock, uint32_t intrFlags)
{

 XX_UnlockSpinlock(h_Spinlock);
}
