
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int clock_t ;


 int MAX (int,int ) ;
 int MIN (int,int) ;
 int ddi_get_lbolt () ;
 int hz ;
 scalar_t__ l2arc_feed_again ;
 int l2arc_feed_min_ms ;
 int l2arc_feed_secs ;

__attribute__((used)) static clock_t
l2arc_write_interval(clock_t began, uint64_t wanted, uint64_t wrote)
{
 clock_t interval, next, now;







 if (l2arc_feed_again && wrote > (wanted / 2))
  interval = (hz * l2arc_feed_min_ms) / 1000;
 else
  interval = hz * l2arc_feed_secs;

 now = ddi_get_lbolt();
 next = MAX(now, MIN(now + interval, began + interval));

 return (next);
}
