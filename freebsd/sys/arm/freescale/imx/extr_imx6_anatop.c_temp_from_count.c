
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct imx6_anatop_softc {int temp_high_val; int temp_high_cnt; int temp_room_cnt; } ;



__attribute__((used)) static inline uint32_t
temp_from_count(struct imx6_anatop_softc *sc, uint32_t count)
{

 return (((sc->temp_high_val - (count - sc->temp_high_cnt) *
     (sc->temp_high_val - 250) /
     (sc->temp_room_cnt - sc->temp_high_cnt))));
}
