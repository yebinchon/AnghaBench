
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_pcminfo {struct sc_chinfo* chan; struct sc_info* sc; } ;
struct sc_info {int dev; } ;
struct sc_chinfo {int dummy; } ;


 int READ4 (struct sc_info*,int ) ;
 int SSI_SISR ;
 int device_printf (int ,char*,int ) ;

__attribute__((used)) static void
ssi_intr(void *arg)
{
 struct sc_pcminfo *scp;
 struct sc_chinfo *ch;
 struct sc_info *sc;

 scp = arg;
 sc = scp->sc;
 ch = &scp->chan[0];






}
