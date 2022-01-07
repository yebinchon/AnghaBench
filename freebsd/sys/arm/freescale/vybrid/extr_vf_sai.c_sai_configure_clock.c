
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {struct sai_rate* sr; } ;
struct sai_rate {int div; int mfd; int mfn; int mfi; } ;


 int I2S_TCR2 ;
 int READ4 (struct sc_info*,int ) ;
 int WRITE4 (struct sc_info*,int ,int) ;
 int pll4_configure_output (int ,int ,int ) ;

__attribute__((used)) static void
sai_configure_clock(struct sc_info *sc)
{
 struct sai_rate *sr;
 int reg;

 sr = sc->sr;
 reg = READ4(sc, I2S_TCR2);
 reg &= ~(0xff << 0);
 reg |= (sr->div << 0);
 WRITE4(sc, I2S_TCR2, reg);

 pll4_configure_output(sr->mfi, sr->mfn, sr->mfd);
}
