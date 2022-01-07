
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int ses_requests; } ;
typedef TYPE_2__ ses_softc_t ;
struct TYPE_9__ {int comstatus; } ;
struct TYPE_11__ {int result; TYPE_1__ elm_stat; int elm_idx; } ;
typedef TYPE_3__ ses_control_request_t ;
struct TYPE_12__ {int periph; TYPE_2__* enc_private; } ;
typedef TYPE_4__ enc_softc_t ;


 int PUSER ;
 int SES_PROCESS_CONTROL_REQS ;
 int SES_SETSTATUS_ENC_IDX ;
 int TAILQ_INSERT_TAIL (int *,TYPE_3__*,int ) ;
 int cam_periph_sleep (int ,TYPE_3__*,int ,char*,int ) ;
 int enc_update_request (TYPE_4__*,int ) ;
 int links ;

__attribute__((used)) static int
ses_set_enc_status(enc_softc_t *enc, uint8_t encstat, int slpflag)
{
 ses_control_request_t req;
 ses_softc_t *ses;

 ses = enc->enc_private;
 req.elm_idx = SES_SETSTATUS_ENC_IDX;
 req.elm_stat.comstatus = encstat & 0xf;

 TAILQ_INSERT_TAIL(&ses->ses_requests, &req, links);
 enc_update_request(enc, SES_PROCESS_CONTROL_REQS);
 cam_periph_sleep(enc->periph, &req, PUSER, "encstat", 0);

 return (req.result);
}
