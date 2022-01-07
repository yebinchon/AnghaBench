
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ mark; scalar_t__ consume; scalar_t__ supply; scalar_t__ top; } ;
typedef TYPE_1__ Ring ;


 scalar_t__ ring_full (TYPE_1__*) ;
 int ring_subtract (TYPE_1__*,scalar_t__,scalar_t__) ;

int
ring_full_consecutive(Ring *ring)
{
    if ((ring->mark == 0) || (ring->mark == ring->consume)) {
 if ((ring->supply < ring->consume) || ring_full(ring)) {
     return ring_subtract(ring, ring->top, ring->consume);
 } else {
     return ring_subtract(ring, ring->supply, ring->consume);
 }
    } else {
 if (ring->mark < ring->consume) {
     return ring_subtract(ring, ring->top, ring->consume);
 } else {
     return ring_subtract(ring, ring->mark, ring->consume);
 }
    }
}
