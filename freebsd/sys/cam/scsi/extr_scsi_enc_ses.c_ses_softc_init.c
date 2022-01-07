
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int ses_pending_requests; int ses_requests; } ;
typedef TYPE_4__ ses_softc_t ;
typedef int ses_cache_t ;
struct TYPE_12__ {TYPE_4__* private; } ;
struct TYPE_11__ {TYPE_4__* private; } ;
struct TYPE_14__ {TYPE_4__* enc_private; TYPE_3__ enc_daemon_cache; TYPE_2__ enc_cache; int enc_fsm_states; int enc_vec; TYPE_1__* periph; } ;
typedef TYPE_5__ enc_softc_t ;
struct TYPE_10__ {int path; } ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_SUBTRACE ;
 int ENC_FREE_AND_NULL (TYPE_4__*) ;
 void* ENC_MALLOCZ (int) ;
 int ENOMEM ;
 int SES_UPDATE_PAGES ;
 int TAILQ_INIT (int *) ;
 int enc_fsm_states ;
 int enc_update_request (TYPE_5__*,int ) ;
 int ses_enc_vec ;
 int ses_set_timed_completion (TYPE_5__*,int) ;

int
ses_softc_init(enc_softc_t *enc)
{
 ses_softc_t *ses_softc;

 CAM_DEBUG(enc->periph->path, CAM_DEBUG_SUBTRACE,
     ("entering enc_softc_init(%p)\n", enc));

 enc->enc_vec = ses_enc_vec;
 enc->enc_fsm_states = enc_fsm_states;

 if (enc->enc_private == ((void*)0))
  enc->enc_private = ENC_MALLOCZ(sizeof(ses_softc_t));
 if (enc->enc_cache.private == ((void*)0))
  enc->enc_cache.private = ENC_MALLOCZ(sizeof(ses_cache_t));
 if (enc->enc_daemon_cache.private == ((void*)0))
  enc->enc_daemon_cache.private =
       ENC_MALLOCZ(sizeof(ses_cache_t));

 if (enc->enc_private == ((void*)0)
  || enc->enc_cache.private == ((void*)0)
  || enc->enc_daemon_cache.private == ((void*)0)) {
  ENC_FREE_AND_NULL(enc->enc_private);
  ENC_FREE_AND_NULL(enc->enc_cache.private);
  ENC_FREE_AND_NULL(enc->enc_daemon_cache.private);
  return (ENOMEM);
 }

 ses_softc = enc->enc_private;
 TAILQ_INIT(&ses_softc->ses_requests);
 TAILQ_INIT(&ses_softc->ses_pending_requests);

 enc_update_request(enc, SES_UPDATE_PAGES);


 if (0) (void) ses_set_timed_completion(enc, 1);

 return (0);
}
