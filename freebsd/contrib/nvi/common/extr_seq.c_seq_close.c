
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int seqq; } ;
typedef int SEQ ;
typedef TYPE_1__ GS ;


 int * SLIST_FIRST (int ) ;
 int SLIST_REMOVE_HEAD (int ,int ) ;
 int q ;
 int seq_free (int *) ;

void
seq_close(GS *gp)
{
 SEQ *qp;

 while ((qp = SLIST_FIRST(gp->seqq)) != ((void*)0)) {
  SLIST_REMOVE_HEAD(gp->seqq, q);
  (void)seq_free(qp);
 }
}
