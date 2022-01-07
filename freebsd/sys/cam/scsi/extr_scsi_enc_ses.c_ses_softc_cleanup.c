
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int private; } ;
struct TYPE_5__ {TYPE_4__ enc_daemon_cache; TYPE_4__ enc_cache; int enc_private; } ;
typedef TYPE_1__ enc_softc_t ;


 int ENC_FREE_AND_NULL (int ) ;
 int ses_cache_free (TYPE_1__*,TYPE_4__*) ;

__attribute__((used)) static void
ses_softc_cleanup(enc_softc_t *enc)
{

 ses_cache_free(enc, &enc->enc_cache);
 ses_cache_free(enc, &enc->enc_daemon_cache);
 ENC_FREE_AND_NULL(enc->enc_private);
 ENC_FREE_AND_NULL(enc->enc_cache.private);
 ENC_FREE_AND_NULL(enc->enc_daemon_cache.private);
}
