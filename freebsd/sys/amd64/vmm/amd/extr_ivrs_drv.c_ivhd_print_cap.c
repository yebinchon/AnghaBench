
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdvi_softc {int start_dev_rid; int end_dev_rid; int dev; int ext_feature; int ivhd_feature; int ivhd_type; int ivhd_flag; } ;
typedef int device_t ;
typedef int ACPI_IVRS_HARDWARE ;


 int EINVAL ;
 int amdvi_ptp_level ;
 int device_printf (int ,char*,int,...) ;
 int ivhd_print_ext_feature (int ,int ) ;
 int ivhd_print_feature (int ,int ,int ) ;
 int ivhd_print_flag (int ,int ,int ) ;

__attribute__((used)) static int
ivhd_print_cap(struct amdvi_softc *softc, ACPI_IVRS_HARDWARE * ivhd)
{
 device_t dev;
 int max_ptp_level;

 dev = softc->dev;

 ivhd_print_flag(dev, softc->ivhd_type, softc->ivhd_flag);
 ivhd_print_feature(dev, softc->ivhd_type, softc->ivhd_feature);
 ivhd_print_ext_feature(dev, softc->ext_feature);
 max_ptp_level = 7;

 if (max_ptp_level < amdvi_ptp_level) {
  device_printf(dev, "insufficient PTP level:%d\n",
   max_ptp_level);
  return (EINVAL);
 } else {
  device_printf(softc->dev, "supported paging level:%d, will use only: %d\n",
       max_ptp_level, amdvi_ptp_level);
 }

 device_printf(softc->dev, "device range: 0x%x - 0x%x\n",
   softc->start_dev_rid, softc->end_dev_rid);

 return (0);
}
