
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_gcc_softc {int res; } ;


 int AHB_CBCR_CLK_ENABLE ;
 int DAP_CBCR_CLK_ENABLE ;
 int ETR_USB_CBCR_CLK_ENABLE ;
 int GCC_QDSS_BCR ;
 int GCC_QDSS_BCR_BLK_ARES ;
 int GCC_QDSS_CFG_AHB_CBCR ;
 int GCC_QDSS_DAP_CBCR ;
 int GCC_QDSS_ETR_USB_CBCR ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static void
qcom_qdss_enable(struct qcom_gcc_softc *sc)
{


 bus_write_4(sc->res, GCC_QDSS_BCR, GCC_QDSS_BCR_BLK_ARES);


 bus_write_4(sc->res, GCC_QDSS_CFG_AHB_CBCR, AHB_CBCR_CLK_ENABLE);


 bus_write_4(sc->res, GCC_QDSS_DAP_CBCR, DAP_CBCR_CLK_ENABLE);


 bus_write_4(sc->res, GCC_QDSS_ETR_USB_CBCR, ETR_USB_CBCR_CLK_ENABLE);


 bus_write_4(sc->res, GCC_QDSS_BCR, 0);
}
