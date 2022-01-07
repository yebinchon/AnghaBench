
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ipu_softc {int dummy; } ;


 int DC_MAP_CONF_VAL (int) ;
 int IPU_READ4 (struct ipu_softc*,int ) ;
 int IPU_WRITE4 (struct ipu_softc*,int ,int) ;
 int MAP_CONF_VAL_MASK ;

__attribute__((used)) static void
ipu_dc_reset_map(struct ipu_softc *sc, int map)
{
 uint32_t reg, shift;

 reg = IPU_READ4(sc, DC_MAP_CONF_VAL(map));
 if (map & 1)
  shift = 16;
 else
  shift = 0;
 reg &= ~(MAP_CONF_VAL_MASK << shift);
 IPU_WRITE4(sc, DC_MAP_CONF_VAL(map), reg);
}
