
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; unsigned char* supply; unsigned char* consume; unsigned char* bottom; unsigned char* top; scalar_t__ clearto; } ;
typedef TYPE_1__ Ring ;


 int memset (char*,int ,int) ;

int
ring_init(Ring *ring, unsigned char *buffer, int count)
{
    memset((char *)ring, 0, sizeof *ring);

    ring->size = count;

    ring->supply = ring->consume = ring->bottom = buffer;

    ring->top = ring->bottom+ring->size;





    return 1;
}
