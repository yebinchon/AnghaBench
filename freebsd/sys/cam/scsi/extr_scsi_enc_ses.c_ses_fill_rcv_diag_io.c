
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union ccb {int csio; int ataio; } ;
typedef int uint8_t ;
struct enc_fsm_state {int timeout; int buf_size; int page_code; } ;
struct TYPE_3__ {scalar_t__ enc_type; } ;
typedef TYPE_1__ enc_softc_t ;


 scalar_t__ ENC_SEMB_SES ;
 int MSG_SIMPLE_Q_TAG ;
 int SSD_FULL_SIZE ;
 int scsi_receive_diagnostic_results (int *,int,int *,int ,int,int ,int *,int ,int ,int ) ;
 int semb_receive_diagnostic_results (int *,int,int *,int ,int,int ,int *,int ,int ) ;

__attribute__((used)) static int
ses_fill_rcv_diag_io(enc_softc_t *enc, struct enc_fsm_state *state,
         union ccb *ccb, uint8_t *buf)
{

 if (enc->enc_type == ENC_SEMB_SES) {
  semb_receive_diagnostic_results(&ccb->ataio, 5,
     ((void*)0), MSG_SIMPLE_Q_TAG, 1,
     state->page_code, buf, state->buf_size,
     state->timeout);
 } else {
  scsi_receive_diagnostic_results(&ccb->csio, 5,
     ((void*)0), MSG_SIMPLE_Q_TAG, 1,
     state->page_code, buf, state->buf_size,
     SSD_FULL_SIZE, state->timeout);
 }
 return (0);
}
