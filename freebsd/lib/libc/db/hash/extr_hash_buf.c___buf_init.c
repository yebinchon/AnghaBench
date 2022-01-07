
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* prev; struct TYPE_5__* next; } ;
struct TYPE_4__ {int BSIZE; int BSHIFT; int nbufs; TYPE_2__ bufhead; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ BUFHEAD ;


 int MAX (int,int ) ;
 int MIN_BUFFERS ;

void
__buf_init(HTAB *hashp, int nbytes)
{
 BUFHEAD *bfp;
 int npages;

 bfp = &(hashp->bufhead);
 npages = (nbytes + hashp->BSIZE - 1) >> hashp->BSHIFT;
 npages = MAX(npages, MIN_BUFFERS);

 hashp->nbufs = npages;
 bfp->next = bfp;
 bfp->prev = bfp;
}
