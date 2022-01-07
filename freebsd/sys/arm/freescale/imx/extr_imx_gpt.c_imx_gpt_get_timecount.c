
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct timecounter {struct imx_gpt_softc* tc_priv; } ;
struct imx_gpt_softc {int dummy; } ;


 int IMX_GPT_CNT ;
 int READ4 (struct imx_gpt_softc*,int ) ;

__attribute__((used)) static u_int
imx_gpt_get_timecount(struct timecounter *tc)
{
 struct imx_gpt_softc *sc;

 sc = tc->tc_priv;
 return (READ4(sc, IMX_GPT_CNT));
}
