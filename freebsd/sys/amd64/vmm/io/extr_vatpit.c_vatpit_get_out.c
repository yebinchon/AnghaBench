
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vatpit {struct channel* channel; } ;
struct channel {int mode; int initial; } ;



 int vatpit_delta_ticks (struct vatpit*,struct channel*) ;

__attribute__((used)) static int
vatpit_get_out(struct vatpit *vatpit, int channel)
{
 struct channel *c;
 uint64_t delta_ticks;
 int out;

 c = &vatpit->channel[channel];

 switch (c->mode) {
 case 128:
  delta_ticks = vatpit_delta_ticks(vatpit, c);
  out = (delta_ticks >= c->initial);
  break;
 default:
  out = 0;
  break;
 }

 return (out);
}
