
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct a10codec_info {int dummy; } ;


 int CODEC_ANALOG_READ (struct a10codec_info*,int ) ;
 int CODEC_ANALOG_WRITE (struct a10codec_info*,int ,int) ;
 int H3_ACDA_PR_RDAT_MASK ;
 int H3_AC_PR_ADDR_MASK ;
 int H3_AC_PR_ADDR_SHIFT ;
 int H3_AC_PR_RST ;
 int H3_AC_PR_RW ;
 int H3_PR_CFG ;

__attribute__((used)) static u_int
h3_pr_read(struct a10codec_info *sc, u_int addr)
{
 uint32_t val;


 val = CODEC_ANALOG_READ(sc, H3_PR_CFG);


 val |= H3_AC_PR_RST;
 CODEC_ANALOG_WRITE(sc, H3_PR_CFG, val);


 val &= ~H3_AC_PR_RW;
 CODEC_ANALOG_WRITE(sc, H3_PR_CFG, val);


 val &= ~H3_AC_PR_ADDR_MASK;
 val |= (addr << H3_AC_PR_ADDR_SHIFT);
 CODEC_ANALOG_WRITE(sc, H3_PR_CFG, val);


 return (CODEC_ANALOG_READ(sc , H3_PR_CFG) & H3_ACDA_PR_RDAT_MASK);
}
