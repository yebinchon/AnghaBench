
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmds_config {int pad_ctls; int peak_c; int drive_c; int pe_c; int pll1; int pll0; } ;
struct hdmi_softc {int dummy; } ;


 int HDMI_NV_PDISP_PE_CURRENT ;
 int HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT ;
 int HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT ;
 int HDMI_NV_PDISP_SOR_PAD_CTLS0 ;
 int HDMI_NV_PDISP_SOR_PLL0 ;
 int HDMI_NV_PDISP_SOR_PLL1 ;
 int WR4 (struct hdmi_softc*,int ,int ) ;

__attribute__((used)) static void
tmds_init(struct hdmi_softc *sc, const struct tmds_config *tmds)
{

 WR4(sc, HDMI_NV_PDISP_SOR_PLL0, tmds->pll0);
 WR4(sc, HDMI_NV_PDISP_SOR_PLL1, tmds->pll1);
 WR4(sc, HDMI_NV_PDISP_PE_CURRENT, tmds->pe_c);
 WR4(sc, HDMI_NV_PDISP_SOR_LANE_DRIVE_CURRENT, tmds->drive_c);
 WR4(sc, HDMI_NV_PDISP_SOR_IO_PEAK_CURRENT, tmds->peak_c);
 WR4(sc, HDMI_NV_PDISP_SOR_PAD_CTLS0, tmds->pad_ctls);
}
