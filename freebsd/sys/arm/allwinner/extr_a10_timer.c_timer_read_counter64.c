
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct a10_timer_softc {int dummy; } ;


 int CNT64_CTRL_REG ;
 int CNT64_CTRL_RL_EN ;
 int CNT64_HI_REG ;
 int CNT64_LO_REG ;
 int timer_read_4 (struct a10_timer_softc*,int ) ;
 int timer_write_4 (struct a10_timer_softc*,int ,int) ;

__attribute__((used)) static uint64_t
timer_read_counter64(struct a10_timer_softc *sc)
{
 uint32_t lo, hi;


 timer_write_4(sc, CNT64_CTRL_REG, CNT64_CTRL_RL_EN);
 while (timer_read_4(sc, CNT64_CTRL_REG) & CNT64_CTRL_RL_EN)
  continue;

 hi = timer_read_4(sc, CNT64_HI_REG);
 lo = timer_read_4(sc, CNT64_LO_REG);

 return (((uint64_t)hi << 32) | lo);
}
