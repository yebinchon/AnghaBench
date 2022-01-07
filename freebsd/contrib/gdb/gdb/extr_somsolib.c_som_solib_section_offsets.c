
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* data_start; void* text_link_addr; void* text_addr; int name; } ;
struct so_list {struct so_list* next; TYPE_1__ som_solib; } ;
struct section_offsets {void** offsets; } ;
struct objfile {int obfd; int name; } ;
struct TYPE_5__ {void* vma; } ;
typedef TYPE_2__ asection ;


 void* ANOFFSET (struct section_offsets*,size_t) ;
 size_t SECT_OFF_BSS (struct objfile*) ;
 size_t SECT_OFF_DATA (struct objfile*) ;
 size_t SECT_OFF_RODATA (struct objfile*) ;
 size_t SECT_OFF_TEXT (struct objfile*) ;
 TYPE_2__* bfd_get_section_by_name (int ,char*) ;
 struct so_list* so_list_head ;
 scalar_t__ strstr (int ,int ) ;
 int warning (char*) ;

int
som_solib_section_offsets (struct objfile *objfile,
      struct section_offsets *offsets)
{
  struct so_list *so_list = so_list_head;

  while (so_list)
    {


      if (strstr (objfile->name, so_list->som_solib.name))
 {
   asection *private_section;


   offsets->offsets[SECT_OFF_TEXT (objfile)]
     = (so_list->som_solib.text_addr
        - so_list->som_solib.text_link_addr);
   offsets->offsets[SECT_OFF_RODATA (objfile)]
     = ANOFFSET (offsets, SECT_OFF_TEXT (objfile));



   private_section = bfd_get_section_by_name (objfile->obfd,
           "$PRIVATE$");
   if (!private_section)
     {
       warning ("Unable to find $PRIVATE$ in shared library!");
       offsets->offsets[SECT_OFF_DATA (objfile)] = 0;
       offsets->offsets[SECT_OFF_BSS (objfile)] = 0;
       return 1;
     }
   offsets->offsets[SECT_OFF_DATA (objfile)]
     = (so_list->som_solib.data_start - private_section->vma);
   offsets->offsets[SECT_OFF_BSS (objfile)]
     = ANOFFSET (offsets, SECT_OFF_DATA (objfile));
   return 1;
 }
      so_list = so_list->next;
    }
  return 0;
}
