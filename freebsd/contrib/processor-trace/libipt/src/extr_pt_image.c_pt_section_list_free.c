
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int section; } ;
struct pt_section_list {TYPE_1__ section; } ;


 int free (struct pt_section_list*) ;
 int pt_msec_fini (TYPE_1__*) ;
 int pt_section_put (int ) ;

__attribute__((used)) static void pt_section_list_free(struct pt_section_list *list)
{
 if (!list)
  return;

 pt_section_put(list->section.section);
 pt_msec_fini(&list->section);
 free(list);
}
