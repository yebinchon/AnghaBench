
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct rk_pinctrl_softc {int dummy; } ;



__attribute__((used)) static uint32_t
rk3399_get_pd_offset(struct rk_pinctrl_softc *sc, uint32_t bank)
{
 if (bank < 2)
  return (0x40);

 return (0xE040);
}
