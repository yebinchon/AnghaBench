
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hdmi_softc {int dummy; } ;


 int HDMI_NV_PDISP_INT_STATUS ;
 int INT_CODEC_SCRATCH0 ;
 int RD4 (struct hdmi_softc*,int ) ;
 int WR4 (struct hdmi_softc*,int ,int) ;
 int hda_intr (struct hdmi_softc*) ;

__attribute__((used)) static void
hdmi_intr(void *arg)
{
 struct hdmi_softc *sc;
 uint32_t status;

 sc = arg;


 status = RD4(sc, HDMI_NV_PDISP_INT_STATUS);
 WR4(sc, HDMI_NV_PDISP_INT_STATUS, status);


 if (status & INT_CODEC_SCRATCH0)
  hda_intr(sc);
}
