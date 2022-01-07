
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int* ms_lbas; TYPE_1__* ms_allocatable; } ;
typedef TYPE_2__ metaslab_t ;
typedef int avl_tree_t ;
struct TYPE_4__ {int rt_root; } ;


 int highbit64 (int) ;
 int metaslab_block_picker (int *,int*,int,int) ;

__attribute__((used)) static uint64_t
metaslab_ff_alloc(metaslab_t *msp, uint64_t size)
{







 uint64_t align = size & -size;
 uint64_t *cursor = &msp->ms_lbas[highbit64(align) - 1];
 avl_tree_t *t = &msp->ms_allocatable->rt_root;

 return (metaslab_block_picker(t, cursor, size, align));
}
