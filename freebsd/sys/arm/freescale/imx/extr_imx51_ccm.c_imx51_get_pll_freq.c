
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_4__ {int* pll_freq; } ;


 int CCMC_CCR ;
 int CCR_FPM_MULT ;
 int DPLL_DP_CTL ;
 int DPLL_DP_HFS_MFD ;
 int DPLL_DP_HFS_MFN ;
 int DPLL_DP_HFS_OP ;
 int DPLL_DP_MFD ;
 int DPLL_DP_MFN ;
 int DPLL_DP_OP ;
 int DP_CTL_DPDCK0_2_EN ;
 int DP_CTL_HFSM ;
 int DP_CTL_REF_CLK_DIV ;


 int DP_CTL_REF_CLK_SEL_MASK ;
 int DP_OP_MFI_MASK ;
 int DP_OP_MFI_SHIFT ;
 int DP_OP_PDF_MASK ;
 int IMX51_N_DPLLS ;
 int KASSERT (int,char*) ;
 int ccm_read_4 (TYPE_1__*,int ) ;
 TYPE_1__* ccm_softc ;
 int max (int,int) ;
 int pll_read_4 (TYPE_1__*,int,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static uint64_t
imx51_get_pll_freq(u_int pll_no)
{
 uint32_t dp_ctrl;
 uint32_t dp_op;
 uint32_t dp_mfd;
 uint32_t dp_mfn;
 uint32_t mfi;
 int32_t mfn;
 uint32_t mfd;
 uint32_t pdf;
 uint32_t ccr;
 uint64_t freq = 0;
 u_int ref = 0;

 KASSERT(1 <= pll_no && pll_no <= IMX51_N_DPLLS, ("Wrong PLL id"));

 dp_ctrl = pll_read_4(ccm_softc, pll_no, DPLL_DP_CTL);

 if (dp_ctrl & DP_CTL_HFSM) {
  dp_op = pll_read_4(ccm_softc, pll_no, DPLL_DP_HFS_OP);
  dp_mfd = pll_read_4(ccm_softc, pll_no, DPLL_DP_HFS_MFD);
  dp_mfn = pll_read_4(ccm_softc, pll_no, DPLL_DP_HFS_MFN);
 } else {
  dp_op = pll_read_4(ccm_softc, pll_no, DPLL_DP_OP);
  dp_mfd = pll_read_4(ccm_softc, pll_no, DPLL_DP_MFD);
  dp_mfn = pll_read_4(ccm_softc, pll_no, DPLL_DP_MFN);
 }

 pdf = dp_op & DP_OP_PDF_MASK;
 mfi = max(5, (dp_op & DP_OP_MFI_MASK) >> DP_OP_MFI_SHIFT);
 mfd = dp_mfd;
 if (dp_mfn & 0x04000000)

  mfn = (uint32_t)(0xf8000000 | dp_mfn);
 else
  mfn = dp_mfn;

 switch (dp_ctrl & DP_CTL_REF_CLK_SEL_MASK) {
 case 129:


  ref = 24000000;
  break;
 case 128:
  ccr = ccm_read_4(ccm_softc, CCMC_CCR);
  if (ccr & CCR_FPM_MULT)

   ref = 32768 * 1024;
  else

   ref = 32768 * 512;
  break;
 default:
  ref = 0;
 }

 if (dp_ctrl & DP_CTL_REF_CLK_DIV)
  ref /= 2;

 ref *= 4;
 freq = (int64_t)ref * mfi + (int64_t)ref * mfn / (mfd + 1);
 freq /= pdf + 1;

 if (!(dp_ctrl & DP_CTL_DPDCK0_2_EN))
  freq /= 2;
 ccm_softc->pll_freq[pll_no-1] = freq;

 return (freq);
}
