
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int supply; int mark; } ;
typedef TYPE_1__ Ring ;


 int ring_decrement (TYPE_1__*,int ,int) ;

void
ring_mark(Ring *ring)
{
    ring->mark = ring_decrement(ring, ring->supply, 1);
}
