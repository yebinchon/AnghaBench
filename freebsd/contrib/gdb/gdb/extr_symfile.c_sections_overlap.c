
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ vma; } ;
typedef TYPE_1__ asection ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ bfd_get_section_size (TYPE_1__*) ;

__attribute__((used)) static int
sections_overlap (asection *a, asection *b)
{


  CORE_ADDR a_start = a->vma;
  CORE_ADDR a_end = a->vma + bfd_get_section_size (a);
  CORE_ADDR b_start = b->vma;
  CORE_ADDR b_end = b->vma + bfd_get_section_size (b);

  return (a_start < b_end && b_start < a_end);
}
