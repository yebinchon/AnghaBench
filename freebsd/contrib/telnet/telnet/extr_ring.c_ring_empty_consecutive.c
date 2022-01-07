
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ consume; scalar_t__ supply; scalar_t__ top; } ;
typedef TYPE_1__ Ring ;


 scalar_t__ ring_empty (TYPE_1__*) ;
 int ring_subtract (TYPE_1__*,scalar_t__,scalar_t__) ;

int
ring_empty_consecutive(Ring *ring)
{
    if ((ring->consume < ring->supply) || ring_empty(ring)) {




 return ring_subtract(ring, ring->top, ring->supply);
    } else {



 return ring_subtract(ring, ring->consume, ring->supply);
    }
}
