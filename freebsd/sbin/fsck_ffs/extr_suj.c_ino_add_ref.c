
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suj_rec {scalar_t__ sr_rec; } ;
struct suj_ino {int si_recs; } ;
struct jrefrec {scalar_t__ jr_parent; scalar_t__ jr_diroff; scalar_t__ jr_op; int jr_nlink; int jr_mode; } ;


 scalar_t__ JOP_ADDREF ;
 scalar_t__ JOP_REMREF ;
 int TAILQ_INSERT_TAIL (int *,struct suj_rec*,int ) ;
 struct suj_rec* TAILQ_LAST (int *,int ) ;
 struct suj_rec* TAILQ_PREV (struct suj_rec*,int ,int ) ;
 int sr_next ;
 int srechd ;

__attribute__((used)) static void
ino_add_ref(struct suj_ino *sino, struct suj_rec *srec)
{
 struct jrefrec *refrec;
 struct suj_rec *srn;
 struct jrefrec *rrn;

 refrec = (struct jrefrec *)srec->sr_rec;






 for (srn = TAILQ_LAST(&sino->si_recs, srechd); srn;
     srn = TAILQ_PREV(srn, srechd, sr_next)) {
  rrn = (struct jrefrec *)srn->sr_rec;
  if (rrn->jr_parent != refrec->jr_parent ||
      rrn->jr_diroff != refrec->jr_diroff)
   continue;
  if (rrn->jr_op == JOP_REMREF || refrec->jr_op == JOP_ADDREF) {
   rrn->jr_mode = refrec->jr_mode;
   return;
  }






  refrec->jr_nlink = rrn->jr_nlink;
  srn->sr_rec = srec->sr_rec;
  return;
 }
 TAILQ_INSERT_TAIL(&sino->si_recs, srec, sr_next);
}
