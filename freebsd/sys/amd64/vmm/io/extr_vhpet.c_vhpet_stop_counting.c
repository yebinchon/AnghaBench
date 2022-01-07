
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vhpet {int countbase; } ;
typedef int sbintime_t ;


 int VHPET_NUM_TIMERS ;
 int vhpet_stop_timer (struct vhpet*,int,int ) ;

__attribute__((used)) static void
vhpet_stop_counting(struct vhpet *vhpet, uint32_t counter, sbintime_t now)
{
 int i;

 vhpet->countbase = counter;
 for (i = 0; i < VHPET_NUM_TIMERS; i++)
  vhpet_stop_timer(vhpet, i, now);
}
