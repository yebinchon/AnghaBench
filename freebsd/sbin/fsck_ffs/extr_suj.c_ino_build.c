
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct suj_rec {TYPE_2__* sr_rec; } ;
struct suj_ino {scalar_t__ si_hasrecs; int si_recs; int si_movs; int si_newrecs; } ;
struct TYPE_3__ {int jr_op; } ;
struct TYPE_4__ {TYPE_1__ rec_jrefrec; } ;





 scalar_t__ TAILQ_EMPTY (int *) ;
 struct suj_rec* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct suj_rec*,int ) ;
 int TAILQ_REMOVE (int *,struct suj_rec*,int ) ;
 int err_suj (char*,int) ;
 int ino_build_ref (struct suj_ino*,struct suj_rec*) ;
 int sr_next ;

__attribute__((used)) static void
ino_build(struct suj_ino *sino)
{
 struct suj_rec *srec;

 while ((srec = TAILQ_FIRST(&sino->si_newrecs)) != ((void*)0)) {
  TAILQ_REMOVE(&sino->si_newrecs, srec, sr_next);
  switch (srec->sr_rec->rec_jrefrec.jr_op) {
  case 130:
  case 128:
   ino_build_ref(sino, srec);
   break;
  case 129:



   TAILQ_INSERT_TAIL(&sino->si_movs, srec, sr_next);
   break;
  default:
   err_suj("ino_build: Unknown op %d\n",
       srec->sr_rec->rec_jrefrec.jr_op);
  }
 }
 if (TAILQ_EMPTY(&sino->si_recs))
  sino->si_hasrecs = 0;
}
