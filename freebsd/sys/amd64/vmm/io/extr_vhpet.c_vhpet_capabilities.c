
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FS_PER_S ;
 int HPET_CAP_COUNT_SIZE ;
 int HPET_FREQ ;
 int VHPET_NUM_TIMERS ;

__attribute__((used)) static uint64_t
vhpet_capabilities(void)
{
 uint64_t cap = 0;

 cap |= 0x8086 << 16;
 cap |= (VHPET_NUM_TIMERS - 1) << 8;
 cap |= 1;
 cap &= ~HPET_CAP_COUNT_SIZE;

 cap &= 0xffffffff;
 cap |= (FS_PER_S / HPET_FREQ) << 32;

 return (cap);
}
