
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_flno; scalar_t__ e_tlno; } ;
typedef int SMAP ;
typedef int SCR ;
typedef TYPE_1__ EVENT ;


 int * HMAP ;
 int SMAP_FLUSH (int *) ;
 scalar_t__ vs_line (int *,int *,int *,int *) ;

int
vs_repaint(
 SCR *sp,
 EVENT *evp)
{
 SMAP *smp;

 for (; evp->e_flno <= evp->e_tlno; ++evp->e_flno) {
  smp = HMAP + evp->e_flno - 1;
  SMAP_FLUSH(smp);
  if (vs_line(sp, smp, ((void*)0), ((void*)0)))
   return (1);
 }
 return (0);
}
