
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ supplytime; int supply; } ;
typedef TYPE_1__ Ring ;


 scalar_t__ ring_clock ;
 int ring_increment (TYPE_1__*,int ,int) ;

void
ring_supplied(Ring *ring, int count)
{
    ring->supply = ring_increment(ring, ring->supply, count);
    ring->supplytime = ++ring_clock;
}
