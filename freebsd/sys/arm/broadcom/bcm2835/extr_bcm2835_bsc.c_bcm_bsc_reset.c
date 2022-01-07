
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_bsc_softc {int dummy; } ;


 int BCM_BSC_CTRL ;
 int BCM_BSC_CTRL_CLEAR0 ;
 int BCM_BSC_CTRL_I2CEN ;
 int BCM_BSC_STATUS ;
 int BCM_BSC_STATUS_CLKT ;
 int BCM_BSC_STATUS_DONE ;
 int BCM_BSC_STATUS_ERR ;
 int BCM_BSC_WRITE (struct bcm_bsc_softc*,int ,int) ;
 int bcm_bsc_modifyreg (struct bcm_bsc_softc*,int ,int ,int ) ;

__attribute__((used)) static void
bcm_bsc_reset(struct bcm_bsc_softc *sc)
{


 BCM_BSC_WRITE(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_I2CEN);

 BCM_BSC_WRITE(sc, BCM_BSC_STATUS, BCM_BSC_STATUS_CLKT |
     BCM_BSC_STATUS_ERR | BCM_BSC_STATUS_DONE);

 bcm_bsc_modifyreg(sc, BCM_BSC_CTRL, BCM_BSC_CTRL_CLEAR0,
     BCM_BSC_CTRL_CLEAR0);
}
