
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nsamples; int * extra; int * samples; scalar_t__ last_delta2; scalar_t__ last_delta; int last_time; } ;
typedef TYPE_1__ sample_queue_t ;
typedef int isc_entropy_t ;


 int entropypool_adddata (int *,int *,int,unsigned int) ;
 scalar_t__ estimate_entropy (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned int
crunchsamples(isc_entropy_t *ent, sample_queue_t *sq) {
 unsigned int ns;
 unsigned int added;

 if (sq->nsamples < 6)
  return (0);

 added = 0;
 sq->last_time = sq->samples[0];
 sq->last_delta = 0;
 sq->last_delta2 = 0;





 for (ns = 0; ns < 4; ns++)
  (void)estimate_entropy(sq, sq->samples[ns]);

 for (ns = 4; ns < sq->nsamples; ns++)
  added += estimate_entropy(sq, sq->samples[ns]);

 entropypool_adddata(ent, sq->samples, sq->nsamples * 4, added);
 entropypool_adddata(ent, sq->extra, sq->nsamples * 4, 0);





 for (ns = 0; ns < 4; ns++) {
  sq->samples[ns] = sq->samples[sq->nsamples - 4 + ns];
  sq->extra[ns] = sq->extra[sq->nsamples - 4 + ns];
 }

 sq->nsamples = 4;

 return (added);
}
