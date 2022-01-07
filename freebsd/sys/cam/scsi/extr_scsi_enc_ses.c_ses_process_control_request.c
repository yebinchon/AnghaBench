
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
typedef int uint8_t ;
struct enc_fsm_state {int dummy; } ;
struct TYPE_5__ {int ses_pending_requests; } ;
typedef TYPE_1__ ses_softc_t ;
struct TYPE_6__ {TYPE_1__* enc_private; } ;
typedef TYPE_2__ enc_softc_t ;


 int ses_poll_status (TYPE_2__*) ;
 int ses_terminate_control_requests (int *,int) ;

__attribute__((used)) static int
ses_process_control_request(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t **bufp, int error, int xfer_len)
{
 ses_softc_t *ses;

 ses = enc->enc_private;





 ses_terminate_control_requests(&ses->ses_pending_requests, error);
 ses_poll_status(enc);
 return (0);
}
