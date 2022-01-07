
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_4__ {int enc_cache_lock; int enc_cache; int enc_daemon_cache; } ;
typedef TYPE_1__ enc_softc_t ;


 int ses_cache_clone (TYPE_1__*,int *,int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
ses_publish_cache(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{

 sx_xlock(&enc->enc_cache_lock);
 ses_cache_clone(enc, &enc->enc_daemon_cache,
          &enc->enc_cache);
 sx_xunlock(&enc->enc_cache_lock);

 return (0);
}
