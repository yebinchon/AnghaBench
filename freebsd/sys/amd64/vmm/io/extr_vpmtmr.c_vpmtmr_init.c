
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpmtmr {int freq_sbt; scalar_t__ baseval; int baseuptime; } ;
struct vm {int dummy; } ;
struct bintime {int dummy; } ;


 int FREQ2BT (int ,struct bintime*) ;
 int M_VPMTMR ;
 int M_WAITOK ;
 int M_ZERO ;
 int PMTMR_FREQ ;
 int bttosbt (struct bintime) ;
 struct vpmtmr* malloc (int,int ,int) ;
 int sbinuptime () ;

struct vpmtmr *
vpmtmr_init(struct vm *vm)
{
 struct vpmtmr *vpmtmr;
 struct bintime bt;

 vpmtmr = malloc(sizeof(struct vpmtmr), M_VPMTMR, M_WAITOK | M_ZERO);
 vpmtmr->baseuptime = sbinuptime();
 vpmtmr->baseval = 0;

 FREQ2BT(PMTMR_FREQ, &bt);
 vpmtmr->freq_sbt = bttosbt(bt);

 return (vpmtmr);
}
