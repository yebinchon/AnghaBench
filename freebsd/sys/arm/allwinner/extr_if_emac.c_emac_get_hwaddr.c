
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;
typedef int uint32_t ;
typedef char u_char ;
struct emac_softc {int dummy; } ;
typedef int rootkey ;


 int AW_SID_FUSE_ROOTKEY ;
 int EMAC_MAC_A0 ;
 int EMAC_MAC_A1 ;
 int EMAC_READ_REG (struct emac_softc*,int ) ;
 int arc4random () ;
 scalar_t__ aw_sid_get_fuse (int ,char*,size_t*) ;
 scalar_t__ bootverbose ;
 char* ether_sprintf (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
emac_get_hwaddr(struct emac_softc *sc, uint8_t *hwaddr)
{
 uint32_t val0, val1, rnd;
 u_char rootkey[16];
 size_t rootkey_size;
 val0 = EMAC_READ_REG(sc, EMAC_MAC_A0);
 val1 = EMAC_READ_REG(sc, EMAC_MAC_A1);
 if ((val0 | val1) != 0 && (val0 | val1) != 0xffffff) {
  hwaddr[0] = (val1 >> 16) & 0xff;
  hwaddr[1] = (val1 >> 8) & 0xff;
  hwaddr[2] = (val1 >> 0) & 0xff;
  hwaddr[3] = (val0 >> 16) & 0xff;
  hwaddr[4] = (val0 >> 8) & 0xff;
  hwaddr[5] = (val0 >> 0) & 0xff;
 } else {
  rootkey_size = sizeof(rootkey);
  if (aw_sid_get_fuse(AW_SID_FUSE_ROOTKEY, rootkey,
      &rootkey_size) == 0) {
   hwaddr[0] = 0x2;
   hwaddr[1] = rootkey[3];
   hwaddr[2] = rootkey[12];
   hwaddr[3] = rootkey[13];
   hwaddr[4] = rootkey[14];
   hwaddr[5] = rootkey[15];
  }
  else {
   rnd = arc4random() & 0x00ffffff;
   hwaddr[0] = 'b';
   hwaddr[1] = 's';
   hwaddr[2] = 'd';
   hwaddr[3] = (rnd >> 16) & 0xff;
   hwaddr[4] = (rnd >> 8) & 0xff;
   hwaddr[5] = (rnd >> 0) & 0xff;
  }
 }
 if (bootverbose)
  printf("MAC address: %s\n", ether_sprintf(hwaddr));
}
