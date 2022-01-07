
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ index; scalar_t__ lane; scalar_t__ slice; scalar_t__ pass; } ;
typedef TYPE_1__ argon2_position_t ;
struct TYPE_7__ {scalar_t__ lanes; } ;
typedef TYPE_2__ argon2_instance_t ;


 scalar_t__ ARGON2_SYNC_POINTS ;
 int fill_segment (TYPE_2__*,TYPE_1__) ;

void
fill_memory_blocks(argon2_instance_t *instance, uint32_t pass)
{
    argon2_position_t position;
    uint32_t l;
    uint32_t s;

    if (instance == ((void*)0) || instance->lanes == 0) {
        return;
    }

    position.pass = pass;
    for (s = 0; s < ARGON2_SYNC_POINTS; ++s) {
        position.slice = (uint8_t) s;
        for (l = 0; l < instance->lanes; ++l) {
            position.lane = l;
            position.index = 0;
            fill_segment(instance, position);
        }
    }
}
