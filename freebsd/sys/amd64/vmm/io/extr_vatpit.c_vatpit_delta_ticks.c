
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int frac; } ;
struct vatpit {TYPE_1__ freq_bt; } ;
struct channel {int now_bt; } ;
struct bintime {int sec; int frac; } ;


 int PIT_8254_FREQ ;
 int bintime_sub (struct bintime*,int *) ;
 int binuptime (struct bintime*) ;

__attribute__((used)) static uint64_t
vatpit_delta_ticks(struct vatpit *vatpit, struct channel *c)
{
 struct bintime delta;
 uint64_t result;

 binuptime(&delta);
 bintime_sub(&delta, &c->now_bt);

 result = delta.sec * PIT_8254_FREQ;
 result += delta.frac / vatpit->freq_bt.frac;

 return (result);
}
