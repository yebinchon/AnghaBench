
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct fman_fpm_regs {int fm_rstc; } ;


 int DELAY (int) ;
 int EBUSY ;
 int EINVAL ;
 int FPM_RSTC_10G0_RESET ;
 int FPM_RSTC_10G1_RESET ;
 int FPM_RSTC_1G0_RESET ;
 int FPM_RSTC_1G1_RESET ;
 int FPM_RSTC_1G2_RESET ;
 int FPM_RSTC_1G3_RESET ;
 int FPM_RSTC_1G4_RESET ;
 int FPM_RSTC_1G5_RESET ;
 int FPM_RSTC_1G6_RESET ;
 int FPM_RSTC_1G7_RESET ;
 int ioread32be (int *) ;
 int iowrite32be (int,int *) ;

int fman_reset_mac(struct fman_fpm_regs *fpm_rg, uint8_t mac_id, bool is_10g)
{
 uint32_t msk, timeout = 100;


 if (is_10g) {
  switch (mac_id) {
  case(0):
   msk = FPM_RSTC_10G0_RESET;
   break;
        case(1):
            msk = FPM_RSTC_10G1_RESET;
            break;
  default:
   return -EINVAL;
  }
 } else {
  switch (mac_id) {
  case(0):
   msk = FPM_RSTC_1G0_RESET;
   break;
  case(1):
   msk = FPM_RSTC_1G1_RESET;
   break;
  case(2):
   msk = FPM_RSTC_1G2_RESET;
   break;
  case(3):
   msk = FPM_RSTC_1G3_RESET;
   break;
  case(4):
   msk = FPM_RSTC_1G4_RESET;
   break;
        case (5):
            msk = FPM_RSTC_1G5_RESET;
            break;
        case (6):
            msk = FPM_RSTC_1G6_RESET;
            break;
        case (7):
            msk = FPM_RSTC_1G7_RESET;
            break;
  default:
   return -EINVAL;
  }
 }

 iowrite32be(msk, &fpm_rg->fm_rstc);
 while ((ioread32be(&fpm_rg->fm_rstc) & msk) && --timeout)
  DELAY(10);

 if (!timeout)
  return -EBUSY;
 return 0;
}
