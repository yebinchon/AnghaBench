
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbdata {int * mb_top; } ;


 int m_freem (int *) ;

int
mb_done(struct mbdata *mbp)
{
 if (mbp->mb_top) {
  m_freem(mbp->mb_top);
  mbp->mb_top = ((void*)0);
 }
 return 0;
}
