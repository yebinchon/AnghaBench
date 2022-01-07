
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct objfile {int obfd; } ;
struct TYPE_3__ {int index; } ;
typedef TYPE_1__ asection ;


 TYPE_1__* bfd_get_section_by_name (int ,char*) ;

int
get_section_index (struct objfile *objfile, char *section_name)
{
  asection *sect = bfd_get_section_by_name (objfile->obfd, section_name);
  if (sect)
    return sect->index;
  else
    return -1;
}
