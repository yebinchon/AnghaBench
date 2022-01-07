
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int boolean_t ;
struct TYPE_4__ {int * arcs_esize; } ;
typedef TYPE_1__ arc_state_t ;
typedef size_t arc_buf_contents_t ;


 int ARC_EVICT_ALL ;
 scalar_t__ arc_evict_state (TYPE_1__*,int ,int ,size_t) ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static uint64_t
arc_flush_state(arc_state_t *state, uint64_t spa, arc_buf_contents_t type,
    boolean_t retry)
{
 uint64_t evicted = 0;

 while (zfs_refcount_count(&state->arcs_esize[type]) != 0) {
  evicted += arc_evict_state(state, spa, ARC_EVICT_ALL, type);

  if (!retry)
   break;
 }

 return (evicted);
}
