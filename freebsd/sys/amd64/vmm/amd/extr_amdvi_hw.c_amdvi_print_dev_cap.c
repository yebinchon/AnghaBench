
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivhd_dev_cfg {scalar_t__ enable_ats; int data; int end_id; int start_id; } ;
struct amdvi_softc {int dev_cfg_cnt; int dev; struct ivhd_dev_cfg* dev_cfg; } ;


 int device_printf (int ,char*,int ,int ,int ,char*,char*) ;

__attribute__((used)) static void
amdvi_print_dev_cap(struct amdvi_softc *softc)
{
 struct ivhd_dev_cfg *cfg;
 int i;

 cfg = softc->dev_cfg;
 for (i = 0; i < softc->dev_cfg_cnt; i++) {
  device_printf(softc->dev, "device [0x%x - 0x%x]"
      "config:%b%s\n", cfg->start_id, cfg->end_id,
      cfg->data,
      "\020\001INIT\002ExtInt\003NMI"
      "\007LINT0\008LINT1",
      cfg->enable_ats ? "ATS enabled" : "");
  cfg++;
 }
}
