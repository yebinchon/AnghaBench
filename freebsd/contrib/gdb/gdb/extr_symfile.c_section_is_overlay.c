
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lma; scalar_t__ vma; } ;
typedef TYPE_1__ asection ;


 scalar_t__ overlay_debugging ;

int
section_is_overlay (asection *section)
{


  if (overlay_debugging)
    if (section && section->lma != 0 &&
 section->vma != section->lma)
      return 1;

  return 0;
}
