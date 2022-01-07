
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int zio_alloc_list_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_15__ {scalar_t__ ms_initializing; int ms_allocator; int ms_primary; scalar_t__ ms_start; int ms_weight; int ms_sm; scalar_t__ ms_condensing; } ;
typedef TYPE_1__ metaslab_t ;
struct TYPE_16__ {int mg_metaslab_tree; } ;
typedef TYPE_2__ metaslab_group_t ;
typedef int dva_t ;
typedef int boolean_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 int AVL_AFTER ;
 TYPE_1__* AVL_NEXT (int *,TYPE_1__*) ;
 scalar_t__ METASLAB_WEIGHT_PRIMARY ;
 int TRACE_TOO_SMALL ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 TYPE_1__* avl_nearest (int *,int ,int ) ;
 scalar_t__ metaslab_distance (TYPE_1__*,int *) ;
 int metaslab_should_allocate (TYPE_1__*,scalar_t__) ;
 int metaslab_trace_add (int *,TYPE_2__*,TYPE_1__*,scalar_t__,int,int ,int) ;
 scalar_t__ space_map_allocated (int ) ;

__attribute__((used)) static metaslab_t *
find_valid_metaslab(metaslab_group_t *mg, uint64_t activation_weight,
    dva_t *dva, int d, uint64_t min_distance, uint64_t asize, int allocator,
    zio_alloc_list_t *zal, metaslab_t *search, boolean_t *was_active)
{
 avl_index_t idx;
 avl_tree_t *t = &mg->mg_metaslab_tree;
 metaslab_t *msp = avl_find(t, search, &idx);
 if (msp == ((void*)0))
  msp = avl_nearest(t, idx, AVL_AFTER);

 for (; msp != ((void*)0); msp = AVL_NEXT(t, msp)) {
  int i;
  if (!metaslab_should_allocate(msp, asize)) {
   metaslab_trace_add(zal, mg, msp, asize, d,
       TRACE_TOO_SMALL, allocator);
   continue;
  }





  if (msp->ms_condensing || msp->ms_initializing > 0)
   continue;

  *was_active = msp->ms_allocator != -1;







  if (activation_weight == METASLAB_WEIGHT_PRIMARY || *was_active)
   break;

  uint64_t target_distance = min_distance
      + (space_map_allocated(msp->ms_sm) != 0 ? 0 :
      min_distance >> 1);

  for (i = 0; i < d; i++) {
   if (metaslab_distance(msp, &dva[i]) < target_distance)
    break;
  }
  if (i == d)
   break;
 }

 if (msp != ((void*)0)) {
  search->ms_weight = msp->ms_weight;
  search->ms_start = msp->ms_start + 1;
  search->ms_allocator = msp->ms_allocator;
  search->ms_primary = msp->ms_primary;
 }
 return (msp);
}
