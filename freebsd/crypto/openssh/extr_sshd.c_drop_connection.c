
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_startups_begin; int max_startups; int max_startups_rate; } ;


 int arc4random_uniform (int) ;
 int debug (char*,int,int) ;
 TYPE_1__ options ;

__attribute__((used)) static int
drop_connection(int startups)
{
 int p, r;

 if (startups < options.max_startups_begin)
  return 0;
 if (startups >= options.max_startups)
  return 1;
 if (options.max_startups_rate == 100)
  return 1;

 p = 100 - options.max_startups_rate;
 p *= startups - options.max_startups_begin;
 p /= options.max_startups - options.max_startups_begin;
 p += options.max_startups_rate;
 r = arc4random_uniform(100);

 debug("drop_connection: p %d, r %d", p, r);
 return (r < p) ? 1 : 0;
}
