
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct mtx* t_Handle ;
struct mtx {int dummy; } ;


 int M_NETCOMMSW ;
 int free (struct mtx*,int ) ;
 int mtx_destroy (struct mtx*) ;

void
XX_FreeSpinlock(t_Handle h_Spinlock)
{
 struct mtx *m;

 m = h_Spinlock;

 mtx_destroy(m);
 free(m, M_NETCOMMSW);
}
