
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int block ;
struct TYPE_5__ {int memory_blocks; int segment_length; int * pseudo_rands; TYPE_1__* region; } ;
typedef TYPE_2__ argon2_instance_t ;
struct TYPE_4__ {int * memory; } ;


 int sodium_memzero (int *,int) ;

__attribute__((used)) static void
clear_memory(argon2_instance_t *instance, int clear)
{

    if (clear) {
        if (instance->region != ((void*)0)) {
            sodium_memzero(instance->region->memory,
                           sizeof(block) * instance->memory_blocks);
        }
        if (instance->pseudo_rands != ((void*)0)) {
            sodium_memzero(instance->pseudo_rands,
                           sizeof(uint64_t) * instance->segment_length);
        }
    }

}
