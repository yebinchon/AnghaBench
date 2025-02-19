
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunder_pem_softc {uintptr_t id; } ;
typedef int device_t ;


 int ENOENT ;
 int PCIB_IVAR_BUS ;
 int PCIB_IVAR_DOMAIN ;
 int PCIERC_CFG006 ;
 uintptr_t PCIERC_CFG006_SEC_BUS (int) ;
 struct thunder_pem_softc* device_get_softc (int ) ;
 int thunder_pem_config_reg_read (struct thunder_pem_softc*,int ) ;

__attribute__((used)) static int
thunder_pem_read_ivar(device_t dev, device_t child, int index,
    uintptr_t *result)
{
 struct thunder_pem_softc *sc;
 int secondary_bus = 0;

 sc = device_get_softc(dev);

 if (index == PCIB_IVAR_BUS) {
  secondary_bus = thunder_pem_config_reg_read(sc, PCIERC_CFG006);
  *result = PCIERC_CFG006_SEC_BUS(secondary_bus);
  return (0);
 }
 if (index == PCIB_IVAR_DOMAIN) {
  *result = sc->id;
  return (0);
 }

 return (ENOENT);
}
