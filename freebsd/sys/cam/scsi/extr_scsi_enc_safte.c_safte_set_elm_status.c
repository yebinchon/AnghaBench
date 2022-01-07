
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct scfg {int requests; } ;
struct TYPE_9__ {int result; int elm_stat; int elm_idx; } ;
typedef TYPE_1__ safte_control_request_t ;
struct TYPE_10__ {int* cstat; int elm_idx; } ;
typedef TYPE_2__ encioc_elm_status_t ;
struct TYPE_11__ {int periph; struct scfg* enc_private; } ;
typedef TYPE_3__ enc_softc_t ;


 int ENXIO ;
 int PUSER ;
 int SAFTE_PROCESS_CONTROL_REQS ;
 int SESCTL_CSEL ;
 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int cam_periph_sleep (int ,TYPE_1__*,int ,char*,int ) ;
 int enc_update_request (TYPE_3__*,int ) ;
 int links ;
 int memcpy (int *,int*,int) ;

__attribute__((used)) static int
safte_set_elm_status(enc_softc_t *enc, encioc_elm_status_t *elms, int slpflag)
{
 struct scfg *cfg;
 safte_control_request_t req;

 cfg = enc->enc_private;
 if (cfg == ((void*)0))
  return (ENXIO);


 if ((elms->cstat[0] & SESCTL_CSEL) == 0)
  return (0);

 req.elm_idx = elms->elm_idx;
 memcpy(&req.elm_stat, elms->cstat, sizeof(req.elm_stat));
 req.result = 0;

 TAILQ_INSERT_TAIL(&cfg->requests, &req, links);
 enc_update_request(enc, SAFTE_PROCESS_CONTROL_REQS);
 cam_periph_sleep(enc->periph, &req, PUSER, "encstat", 0);

 return (req.result);
}
