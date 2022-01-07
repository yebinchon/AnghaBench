
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* b_cont; scalar_t__ b_rptr; scalar_t__ b_wptr; } ;
typedef TYPE_1__ mblk_t ;


 int freeb (TYPE_1__*) ;

__attribute__((used)) static unsigned long
rdchar(
       mblk_t **mp
       )
{
 while (*mp != (mblk_t *)((void*)0))
 {
  if ((*mp)->b_wptr - (*mp)->b_rptr)
  {
   return (unsigned long)(*(unsigned char *)((*mp)->b_rptr++));
  }
  else
  {
   register mblk_t *mmp = *mp;

   *mp = (*mp)->b_cont;
   freeb(mmp);
  }
 }
 return (unsigned long)~0;
}
