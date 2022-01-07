
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int temp_room_cnt; int temp_high_cnt; int temp_high_val; } ;



__attribute__((used)) static inline uint32_t
temp_to_count(struct imx6_anatop_softc *sc, uint32_t temp)
{

 return ((sc->temp_room_cnt - sc->temp_high_cnt) *
     (sc->temp_high_val - temp) / (sc->temp_high_val - 250) +
     sc->temp_high_cnt);
}
