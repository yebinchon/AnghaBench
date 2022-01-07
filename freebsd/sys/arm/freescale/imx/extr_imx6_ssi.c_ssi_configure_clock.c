
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssi_rate {int mfd; int mfn; int mfi; } ;
struct sc_info {struct ssi_rate* sr; } ;


 int pll4_configure_output (int ,int ,int ) ;

__attribute__((used)) static void
ssi_configure_clock(struct sc_info *sc)
{
 struct ssi_rate *sr;

 sr = sc->sr;

 pll4_configure_output(sr->mfi, sr->mfn, sr->mfd);


}
