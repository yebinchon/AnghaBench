
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpmtmr {int dummy; } ;


 int M_VPMTMR ;
 int free (struct vpmtmr*,int ) ;

void
vpmtmr_cleanup(struct vpmtmr *vpmtmr)
{

 free(vpmtmr, M_VPMTMR);
}
