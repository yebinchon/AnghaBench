
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ consume; scalar_t__ clearto; scalar_t__ top; scalar_t__ bottom; scalar_t__ supply; scalar_t__ consumetime; scalar_t__ mark; } ;
typedef TYPE_1__ Ring ;


 scalar_t__ ring_clock ;
 scalar_t__ ring_empty (TYPE_1__*) ;
 scalar_t__ ring_increment (TYPE_1__*,scalar_t__,int) ;
 int ring_subtract (TYPE_1__*,scalar_t__,scalar_t__) ;

void
ring_consumed(Ring *ring, int count)
{
    if (count == 0)
 return;

    if (ring->mark &&
  (ring_subtract(ring, ring->mark, ring->consume) < count)) {
 ring->mark = 0;
    }
    ring->consume = ring_increment(ring, ring->consume, count);
    ring->consumetime = ++ring_clock;



    if (ring_empty(ring)) {
 ring->consume = ring->supply = ring->bottom;
    }
}
