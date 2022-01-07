
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int supply; int consume; } ;
typedef TYPE_1__ Ring ;


 scalar_t__ ring_empty (TYPE_1__*) ;
 int ring_subtract (TYPE_1__*,int ,int ) ;

int
ring_empty_count(Ring *ring)
{
    if (ring_empty(ring)) {
     return ring->size;
    } else {
 return ring_subtract(ring, ring->consume, ring->supply);
    }
}
