
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu_softc {int dummy; } ;


 int DC_WRITE_CH_CONF_1 ;
 int DC_WRITE_CH_CONF_5 ;
 int IPU_READ4 (struct ipu_softc*,int ) ;
 int IPU_WRITE4 (struct ipu_softc*,int ,int ) ;
 int WRITE_CH_CONF_PROG_CHAN_NORMAL ;
 int WRITE_CH_CONF_PROG_CHAN_TYP_MASK ;
 int WRITE_CH_CONF_PROG_DI_ID (int) ;

__attribute__((used)) static void
ipu_dc_enable(struct ipu_softc *sc)
{
 uint32_t conf;


 IPU_WRITE4(sc, DC_WRITE_CH_CONF_1, WRITE_CH_CONF_PROG_DI_ID(1));

 conf = IPU_READ4(sc, DC_WRITE_CH_CONF_5);
 conf &= ~WRITE_CH_CONF_PROG_CHAN_TYP_MASK;
 conf |= WRITE_CH_CONF_PROG_CHAN_NORMAL;
 IPU_WRITE4(sc, DC_WRITE_CH_CONF_5, conf);


}
