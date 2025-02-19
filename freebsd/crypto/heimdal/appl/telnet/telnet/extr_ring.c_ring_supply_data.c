
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int supply; } ;
typedef TYPE_1__ Ring ;


 int memmove (int ,unsigned char*,int) ;
 int min (int,int ) ;
 int ring_empty_consecutive (TYPE_1__*) ;
 int ring_supplied (TYPE_1__*,int) ;

void
ring_supply_data(Ring *ring, unsigned char *buffer, int count)
{
    int i;

    while (count) {
 i = min(count, ring_empty_consecutive(ring));
 memmove(ring->supply, buffer, i);
 ring_supplied(ring, i);
 count -= i;
 buffer += i;
    }
}
