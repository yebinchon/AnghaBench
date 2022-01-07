
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ses_requests; } ;
typedef TYPE_1__ ses_softc_t ;
struct TYPE_5__ {TYPE_1__* enc_private; } ;
typedef TYPE_2__ enc_softc_t ;


 int ENXIO ;
 int ses_terminate_control_requests (int *,int ) ;

__attribute__((used)) static void
ses_softc_invalidate(enc_softc_t *enc)
{
 ses_softc_t *ses;

 ses = enc->enc_private;
 ses_terminate_control_requests(&ses->ses_requests, ENXIO);
}
