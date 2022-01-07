
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct mtx* t_Handle ;
struct mtx {int dummy; } ;


 int mtx_lock (struct mtx*) ;

void
XX_LockSpinlock(t_Handle h_Spinlock)
{
 struct mtx *m;

 m = h_Spinlock;
 mtx_lock(m);
}
