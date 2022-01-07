
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_info* sc; } ;
struct sc_info {int dev; } ;


 int I2S_TCSR ;
 int READ4 (struct sc_info*,int ) ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
sai_intr(void *arg)
{
 struct sc_pcminfo *scp;
 struct sc_info *sc;

 scp = arg;
 sc = scp->sc;

 device_printf(sc->dev, "Error I2S_TCSR == 0x%08x\n",
     READ4(sc, I2S_TCSR));
}
