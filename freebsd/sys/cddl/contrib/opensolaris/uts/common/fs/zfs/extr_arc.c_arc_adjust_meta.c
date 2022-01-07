
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 scalar_t__ ARC_STRATEGY_META_ONLY ;
 int arc_adjust_meta_balanced (int ) ;
 int arc_adjust_meta_only (int ) ;
 scalar_t__ zfs_arc_meta_strategy ;

__attribute__((used)) static uint64_t
arc_adjust_meta(uint64_t meta_used)
{
 if (zfs_arc_meta_strategy == ARC_STRATEGY_META_ONLY)
  return (arc_adjust_meta_only(meta_used));
 else
  return (arc_adjust_meta_balanced(meta_used));
}
