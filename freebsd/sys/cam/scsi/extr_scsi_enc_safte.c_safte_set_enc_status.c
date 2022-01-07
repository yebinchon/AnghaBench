
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct scfg {int requests; } ;
struct TYPE_7__ {int* elm_stat; int result; int elm_idx; } ;
typedef TYPE_1__ safte_control_request_t ;
struct TYPE_8__ {int periph; struct scfg* enc_private; } ;
typedef TYPE_2__ enc_softc_t ;


 int ENXIO ;
 int PUSER ;
 int SAFTE_PROCESS_CONTROL_REQS ;
 int SES_SETSTATUS_ENC_IDX ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int cam_periph_sleep (int ,TYPE_1__*,int ,char*,int ) ;
 int enc_update_request (TYPE_2__*,int ) ;
 int links ;

__attribute__((used)) static int
safte_set_enc_status(enc_softc_t *enc, uint8_t encstat, int slpflag)
{
 struct scfg *cfg;
 safte_control_request_t req;

 cfg = enc->enc_private;
 if (cfg == ((void*)0))
  return (ENXIO);

 req.elm_idx = SES_SETSTATUS_ENC_IDX;
 req.elm_stat[0] = encstat & 0xf;
 req.result = 0;

 TAILQ_INSERT_TAIL(&cfg->requests, &req, links);
 enc_update_request(enc, SAFTE_PROCESS_CONTROL_REQS);
 cam_periph_sleep(enc->periph, &req, PUSER, "encstat", 0);

 return (req.result);
}
