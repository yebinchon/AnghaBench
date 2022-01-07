
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ mark; scalar_t__ consume; } ;
typedef TYPE_1__ Ring ;



int
ring_at_mark(Ring *ring)
{
    if (ring->mark == ring->consume) {
 return 1;
    } else {
 return 0;
    }
}
