
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int ses_requests; } ;
typedef TYPE_1__ ses_softc_t ;
struct TYPE_11__ {int result; int elm_stat; int elm_idx; } ;
typedef TYPE_2__ ses_control_request_t ;
struct TYPE_12__ {int* cstat; int elm_idx; } ;
typedef TYPE_3__ encioc_elm_status_t ;
struct TYPE_13__ {int periph; TYPE_1__* enc_private; } ;
typedef TYPE_4__ enc_softc_t ;


 int PUSER ;
 int SESCTL_CSEL ;
 int SES_PROCESS_CONTROL_REQS ;
 int TAILQ_INSERT_TAIL (int *,TYPE_2__*,int ) ;
 int cam_periph_sleep (int ,TYPE_2__*,int ,char*,int ) ;
 int enc_update_request (TYPE_4__*,int ) ;
 int links ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static int
ses_set_elm_status(enc_softc_t *enc, encioc_elm_status_t *elms, int slpflag)
{
 ses_control_request_t req;
 ses_softc_t *ses;


 if ((elms->cstat[0] & SESCTL_CSEL) == 0)
  return (0);

 ses = enc->enc_private;
 req.elm_idx = elms->elm_idx;
 memcpy(&req.elm_stat, elms->cstat, sizeof(req.elm_stat));

 TAILQ_INSERT_TAIL(&ses->ses_requests, &req, links);
 enc_update_request(enc, SES_PROCESS_CONTROL_REQS);
 cam_periph_sleep(enc->periph, &req, PUSER, "encstat", 0);

 return (req.result);
}
