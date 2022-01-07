
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scfg {int requests; } ;
struct TYPE_4__ {scalar_t__ enc_status; scalar_t__ nelms; } ;
struct TYPE_5__ {TYPE_1__ enc_cache; struct scfg* enc_private; int enc_fsm_states; int enc_vec; } ;
typedef TYPE_2__ enc_softc_t ;


 struct scfg* ENC_MALLOCZ (int ) ;
 int ENOMEM ;
 int SAFT_PRIVATE ;
 int TAILQ_INIT (int *) ;
 int enc_fsm_states ;
 int safte_enc_vec ;

int
safte_softc_init(enc_softc_t *enc)
{
 struct scfg *cfg;

 enc->enc_vec = safte_enc_vec;
 enc->enc_fsm_states = enc_fsm_states;

 if (enc->enc_private == ((void*)0)) {
  enc->enc_private = ENC_MALLOCZ(SAFT_PRIVATE);
  if (enc->enc_private == ((void*)0))
   return (ENOMEM);
 }
 cfg = enc->enc_private;

 enc->enc_cache.nelms = 0;
 enc->enc_cache.enc_status = 0;

 TAILQ_INIT(&cfg->requests);
 return (0);
}
