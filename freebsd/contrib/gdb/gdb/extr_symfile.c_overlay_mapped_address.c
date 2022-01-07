
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lma; scalar_t__ vma; } ;
typedef TYPE_1__ asection ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ overlay_debugging ;
 scalar_t__ pc_in_unmapped_range (scalar_t__,TYPE_1__*) ;
 scalar_t__ section_is_overlay (TYPE_1__*) ;

CORE_ADDR
overlay_mapped_address (CORE_ADDR pc, asection *section)
{


  if (overlay_debugging)
    if (section && section_is_overlay (section) &&
 pc_in_unmapped_range (pc, section))
      return pc + section->vma - section->lma;

  return pc;
}
