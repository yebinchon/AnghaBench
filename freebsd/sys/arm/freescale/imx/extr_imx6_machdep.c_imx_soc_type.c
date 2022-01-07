
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
typedef scalar_t__ u_int ;







 int IMX6_ANALOG_DIGPROG ;
 int IMX6_ANALOG_DIGPROG_SL ;
 int IMX6_ANALOG_DIGPROG_SOCTYPE_MASK ;
 int IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT ;
 scalar_t__ IMXSOC_6DL ;
 scalar_t__ IMXSOC_6Q ;
 scalar_t__ IMXSOC_6S ;
 scalar_t__ IMXSOC_6SL ;
 scalar_t__ IMXSOC_6UL ;
 int* devmap_ptov (int const,int) ;
 int imx6_anatop_read_4 (int ) ;
 int printf (char*,int,int) ;

u_int
imx_soc_type(void)
{
 uint32_t digprog, hwsoc;
 uint32_t *pcr;
 static u_int soctype;
 const vm_offset_t SCU_CONFIG_PHYSADDR = 0x00a00004;






 if (soctype != 0)
  return (soctype);

 digprog = imx6_anatop_read_4(IMX6_ANALOG_DIGPROG_SL);
 hwsoc = (digprog >> IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT) &
     IMX6_ANALOG_DIGPROG_SOCTYPE_MASK;

 if (hwsoc != 0x60) {
  digprog = imx6_anatop_read_4(IMX6_ANALOG_DIGPROG);
  hwsoc = (digprog & IMX6_ANALOG_DIGPROG_SOCTYPE_MASK) >>
      IMX6_ANALOG_DIGPROG_SOCTYPE_SHIFT;

  if (hwsoc == 0x61) {
   pcr = devmap_ptov(SCU_CONFIG_PHYSADDR, 4);
   if (pcr != ((void*)0)) {

    if ((*pcr & 0x03) == 0) {
     hwsoc = 0x62;
    }
   }
  }
 }


 switch (hwsoc) {
 case 0x60:
  soctype = IMXSOC_6SL;
  break;
 case 0x62:
  soctype = IMXSOC_6S;
  break;
 case 0x61:
  soctype = IMXSOC_6DL;
  break;
 case 0x63 :
  soctype = IMXSOC_6Q;
  break;
 case 0x64:
  soctype = IMXSOC_6UL;
  break;
 default:
  printf("imx_soc_type: Don't understand hwsoc 0x%02x, "
      "digprog 0x%08x; assuming IMXSOC_6Q\n", hwsoc, digprog);
  soctype = IMXSOC_6Q;
  break;
 }

 return (soctype);
}
