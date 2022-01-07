
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int bus_space_handle_t ;


 scalar_t__ OMAP4430_REV_ES1_0 ;
 scalar_t__ OMAP4430_REV_ES2_1 ;
 scalar_t__ OMAP4430_REV_ES2_2 ;
 scalar_t__ OMAP4430_REV_ES2_3 ;
 scalar_t__ OMAP4430_REV_UNKNOWN ;
 scalar_t__ OMAP4460_REV_ES1_0 ;
 scalar_t__ OMAP4460_REV_ES1_1 ;
 scalar_t__ OMAP4460_REV_UNKNOWN ;
 scalar_t__ OMAP4470_REV_ES1_0 ;
 scalar_t__ OMAP4470_REV_UNKNOWN ;
 int OMAP44XX_L4_CORE_HWBASE ;
 int OMAP4_ID_CODE ;
 int OMAP_REV_DEVICE (scalar_t__) ;
 int OMAP_REV_MAJOR (scalar_t__) ;
 int OMAP_REV_MINOR (scalar_t__) ;
 scalar_t__ OMAP_UNKNOWN_DEV ;
 int bus_space_map (int ,int ,int,int ,int *) ;
 int bus_space_read_4 (int ,int ,int ) ;
 int bus_space_unmap (int ,int ,int) ;
 scalar_t__ chip_revision ;
 int cp15_midr_get () ;
 int fdtbus_bs_tag ;
 int printf (char*,int,int,...) ;

__attribute__((used)) static void
omap4_get_revision(void)
{
 uint32_t id_code;
 uint32_t revision;
 uint32_t hawkeye;
 bus_space_handle_t bsh;
 bus_space_map(fdtbus_bs_tag,OMAP44XX_L4_CORE_HWBASE, 0x4000, 0, &bsh);
 id_code = bus_space_read_4(fdtbus_bs_tag, bsh, OMAP4_ID_CODE);
 bus_space_unmap(fdtbus_bs_tag, bsh, 0x4000);

 hawkeye = ((id_code >> 12) & 0xffff);
 revision = ((id_code >> 28) & 0xf);





 if (revision == 0) {
  id_code = cp15_midr_get();
  revision = (id_code & 0xf) - 1;
 }

 switch (hawkeye) {
 case 0xB852:
  switch (revision) {
  case 0:
   chip_revision = OMAP4430_REV_ES1_0;
   break;
  case 1:
   chip_revision = OMAP4430_REV_ES2_1;
   break;
  default:
   chip_revision = OMAP4430_REV_UNKNOWN;
   break;
  }
  break;

 case 0xB95C:
  switch (revision) {
  case 3:
   chip_revision = OMAP4430_REV_ES2_1;
   break;
  case 4:
   chip_revision = OMAP4430_REV_ES2_2;
   break;
  case 6:
   chip_revision = OMAP4430_REV_ES2_3;
   break;
  default:
   chip_revision = OMAP4430_REV_UNKNOWN;
   break;
  }
  break;

 case 0xB94E:
  switch (revision) {
  case 0:
   chip_revision = OMAP4460_REV_ES1_0;
   break;
  case 2:
   chip_revision = OMAP4460_REV_ES1_1;
   break;
  default:
   chip_revision = OMAP4460_REV_UNKNOWN;
   break;
  }
  break;

 case 0xB975:
  switch (revision) {
  case 0:
   chip_revision = OMAP4470_REV_ES1_0;
   break;
  default:
   chip_revision = OMAP4470_REV_UNKNOWN;
   break;
  }
  break;

 default:

  chip_revision = OMAP_UNKNOWN_DEV;
  break;
 }
 if (chip_revision != OMAP_UNKNOWN_DEV) {
  printf("Texas Instruments OMAP%04x Processor, Revision ES%u.%u\n",
      OMAP_REV_DEVICE(chip_revision), OMAP_REV_MAJOR(chip_revision),
      OMAP_REV_MINOR(chip_revision));
 }
 else {
  printf("Texas Instruments unknown OMAP chip: %04x, rev %d\n",
      hawkeye, revision);
 }
}
