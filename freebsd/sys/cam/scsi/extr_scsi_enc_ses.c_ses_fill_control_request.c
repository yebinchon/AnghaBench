
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


union ccb {int csio; int ataio; } ;
typedef int uint8_t ;
struct ses_control_page_hdr {int control_flags; } ;
struct ses_comstat {int dummy; } ;
struct enc_fsm_state {int timeout; } ;
struct TYPE_15__ {int ses_pending_requests; int ses_requests; } ;
typedef TYPE_1__ ses_softc_t ;
struct TYPE_16__ {scalar_t__ result; } ;
typedef TYPE_2__ ses_control_request_t ;
struct TYPE_17__ {TYPE_10__* status_page; } ;
typedef TYPE_3__ ses_cache_t ;
struct TYPE_19__ {TYPE_3__* private; } ;
struct TYPE_18__ {scalar_t__ enc_type; TYPE_5__ enc_daemon_cache; TYPE_1__* enc_private; } ;
typedef TYPE_4__ enc_softc_t ;
typedef TYPE_5__ enc_cache_t ;
struct TYPE_14__ {int hdr; } ;


 int EIO ;
 scalar_t__ ENC_SEMB_SES ;
 int ENOENT ;
 int MSG_SIMPLE_Q_TAG ;
 int SESCTL_CSEL ;
 int SES_ENCSTAT_INVOP ;
 int SSD_FULL_SIZE ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int TAILQ_REMOVE (int *,TYPE_2__*,int ) ;
 int links ;
 int memcpy (int *,TYPE_10__*,size_t) ;
 int scsi_send_diagnostic (int *,int,int *,int ,int ,int ,int ,int,int ,int *,size_t,int ,int ) ;
 int semb_send_diagnostic (int *,int,int *,int ,int *,size_t,int ) ;
 scalar_t__ ses_encode (TYPE_4__*,int *,size_t,TYPE_2__*) ;
 size_t ses_page_length (int *) ;
 int ses_terminate_control_requests (int *,int) ;
 int wakeup (TYPE_2__*) ;

__attribute__((used)) static int
ses_fill_control_request(enc_softc_t *enc, struct enc_fsm_state *state,
    union ccb *ccb, uint8_t *buf)
{
 ses_softc_t *ses;
 enc_cache_t *enc_cache;
 ses_cache_t *ses_cache;
 struct ses_control_page_hdr *hdr;
 ses_control_request_t *req;
 size_t plength;
 size_t offset;

 ses = enc->enc_private;
 enc_cache = &enc->enc_daemon_cache;
 ses_cache = enc_cache->private;
 hdr = (struct ses_control_page_hdr *)buf;

 if (ses_cache->status_page == ((void*)0)) {
  ses_terminate_control_requests(&ses->ses_requests, EIO);
  return (EIO);
 }

 plength = ses_page_length(&ses_cache->status_page->hdr);
 memcpy(buf, ses_cache->status_page, plength);


 offset = sizeof(struct ses_control_page_hdr);
 for (offset = sizeof(struct ses_control_page_hdr);
      offset < plength; offset += sizeof(struct ses_comstat)) {
  buf[offset] &= ~SESCTL_CSEL;
 }


 hdr->control_flags &= ~SES_ENCSTAT_INVOP;


 while ((req = TAILQ_FIRST(&ses->ses_requests)) != ((void*)0)) {

  TAILQ_REMOVE(&ses->ses_requests, req, links);
  req->result = ses_encode(enc, buf, plength, req);
  if (req->result != 0) {
   wakeup(req);
   continue;
  }
  TAILQ_INSERT_TAIL(&ses->ses_pending_requests, req, links);
 }

 if (TAILQ_EMPTY(&ses->ses_pending_requests) != 0)
  return (ENOENT);


 if (enc->enc_type == ENC_SEMB_SES) {
  semb_send_diagnostic(&ccb->ataio, 5, ((void*)0),
        MSG_SIMPLE_Q_TAG,
        buf, ses_page_length(&ses_cache->status_page->hdr),
        state->timeout);
 } else {
  scsi_send_diagnostic(&ccb->csio, 5, ((void*)0),
        MSG_SIMPLE_Q_TAG, 0,
                          0, 0,
                       1, 0,
        buf, ses_page_length(&ses_cache->status_page->hdr),
        SSD_FULL_SIZE, state->timeout);
 }
 return (0);
}
