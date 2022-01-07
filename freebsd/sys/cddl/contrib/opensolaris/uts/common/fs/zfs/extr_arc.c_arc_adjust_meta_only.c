
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int int64_t ;
struct TYPE_6__ {int arcs_size; } ;
struct TYPE_5__ {int arcs_size; } ;


 int ARC_BUFC_METADATA ;
 int MIN (int ,int ) ;
 scalar_t__ arc_adjust_impl (TYPE_1__*,int ,int ,int ) ;
 TYPE_3__* arc_anon ;
 scalar_t__ arc_c ;
 scalar_t__ arc_meta_limit ;
 TYPE_1__* arc_mfu ;
 TYPE_1__* arc_mru ;
 scalar_t__ arc_p ;
 scalar_t__ zfs_refcount_count (int *) ;

__attribute__((used)) static uint64_t
arc_adjust_meta_only(uint64_t meta_used)
{
 uint64_t total_evicted = 0;
 int64_t target;
 target = MIN((int64_t)(meta_used - arc_meta_limit),
     (int64_t)(zfs_refcount_count(&arc_anon->arcs_size) +
     zfs_refcount_count(&arc_mru->arcs_size) - arc_p));

 total_evicted += arc_adjust_impl(arc_mru, 0, target, ARC_BUFC_METADATA);






 target = MIN((int64_t)(meta_used - arc_meta_limit),
     (int64_t)(zfs_refcount_count(&arc_mfu->arcs_size) -
     (arc_c - arc_p)));

 total_evicted += arc_adjust_impl(arc_mfu, 0, target, ARC_BUFC_METADATA);

 return (total_evicted);
}
