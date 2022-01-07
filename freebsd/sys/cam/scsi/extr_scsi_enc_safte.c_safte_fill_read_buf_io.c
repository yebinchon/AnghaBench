
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


union ccb {int csio; int ataio; } ;
typedef int uint8_t ;
struct enc_fsm_state {scalar_t__ page_code; int timeout; int buf_size; } ;
struct TYPE_5__ {scalar_t__ nelms; } ;
struct TYPE_6__ {scalar_t__ enc_type; TYPE_1__ enc_cache; } ;
typedef TYPE_2__ enc_softc_t ;


 scalar_t__ ENC_SEMB_SAFT ;
 int MSG_SIMPLE_Q_TAG ;
 scalar_t__ SAFTE_RD_RDCFG ;
 int SAFTE_UPDATE_READCONFIG ;
 int SSD_FULL_SIZE ;
 int enc_update_request (TYPE_2__*,int ) ;
 int scsi_read_buffer (int *,int,int *,int ,int,scalar_t__,int ,int *,int ,int ,int ) ;
 int semb_read_buffer (int *,int,int *,int ,scalar_t__,int *,int ,int ) ;

__attribute__((used)) static int
safte_fill_read_buf_io(enc_softc_t *enc, struct enc_fsm_state *state,
         union ccb *ccb, uint8_t *buf)
{

 if (state->page_code != SAFTE_RD_RDCFG &&
     enc->enc_cache.nelms == 0) {
  enc_update_request(enc, SAFTE_UPDATE_READCONFIG);
  return (-1);
 }

 if (enc->enc_type == ENC_SEMB_SAFT) {
  semb_read_buffer(&ccb->ataio, 5,
    ((void*)0), MSG_SIMPLE_Q_TAG,
    state->page_code, buf, state->buf_size,
    state->timeout);
 } else {
  scsi_read_buffer(&ccb->csio, 5,
    ((void*)0), MSG_SIMPLE_Q_TAG, 1,
    state->page_code, 0, buf, state->buf_size,
    SSD_FULL_SIZE, state->timeout);
 }
 return (0);
}
