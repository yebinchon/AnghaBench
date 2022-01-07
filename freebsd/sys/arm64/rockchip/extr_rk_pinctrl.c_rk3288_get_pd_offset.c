
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct rk_pinctrl_softc {int dummy; } ;



__attribute__((used)) static uint32_t
rk3288_get_pd_offset(struct rk_pinctrl_softc *sc, uint32_t bank)
{
 if (bank == 0)
  return (0x064);
 return (0x130);
}
