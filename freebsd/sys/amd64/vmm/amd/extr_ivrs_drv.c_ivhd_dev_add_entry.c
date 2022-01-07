
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct ivhd_dev_cfg {int enable_ats; scalar_t__ data; void* end_id; void* start_id; } ;
struct amdvi_softc {int dev_cfg_cnt; struct ivhd_dev_cfg* dev_cfg; } ;



__attribute__((used)) static void
ivhd_dev_add_entry(struct amdvi_softc *softc, uint32_t start_id,
    uint32_t end_id, uint8_t cfg, bool ats)
{
 struct ivhd_dev_cfg *dev_cfg;


 if (!cfg)
  return;

 dev_cfg = &softc->dev_cfg[softc->dev_cfg_cnt++];
 dev_cfg->start_id = start_id;
 dev_cfg->end_id = end_id;
 dev_cfg->data = cfg;
 dev_cfg->enable_ats = ats;
}
