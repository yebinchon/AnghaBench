
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_start; scalar_t__ text_link_addr; scalar_t__ text_addr; } ;
struct so_list {int abfd; TYPE_3__* objfile; TYPE_1__ som_solib; } ;
struct obj_section {int endaddr; int addr; int the_bfd_section; } ;
struct TYPE_5__ {struct so_list* so_info; int * unwind_info; } ;
typedef TYPE_2__ obj_private_data_t ;
typedef int flagword ;
struct TYPE_6__ {TYPE_2__* obj_private; int objfile_obstack; int flags; struct obj_section* sections_end; struct obj_section* sections; int obfd; } ;
typedef int CORE_ADDR ;


 int OBJF_SHARED ;
 int SEC_CODE ;
 int SEC_DATA ;
 int bfd_check_format (int ,int ) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_section_flags (int ,int ) ;
 int bfd_object ;
 int error (char*,char*,char*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 TYPE_3__* symbol_file_add (char*,int,int *,int ,int ) ;

__attribute__((used)) static void
som_solib_add_solib_objfile (struct so_list *so, char *name, int from_tty,
        CORE_ADDR text_addr)
{
  obj_private_data_t *obj_private;
  struct obj_section *s;

  so->objfile = symbol_file_add (name, from_tty, ((void*)0), 0, OBJF_SHARED);
  so->abfd = so->objfile->obfd;



  for (s = so->objfile->sections; s < so->objfile->sections_end; s++)
    {
      flagword aflag = bfd_get_section_flags(so->abfd, s->the_bfd_section);
      if (aflag & SEC_CODE)
 {
   s->addr += so->som_solib.text_addr - so->som_solib.text_link_addr;
   s->endaddr += so->som_solib.text_addr - so->som_solib.text_link_addr;
 }
      else if (aflag & SEC_DATA)
 {
   s->addr += so->som_solib.data_start;
   s->endaddr += so->som_solib.data_start;
 }
      else
 ;
    }



  so->objfile->flags |= OBJF_SHARED;

  if (so->objfile->obj_private == ((void*)0))
    {
      obj_private = (obj_private_data_t *)
 obstack_alloc (&so->objfile->objfile_obstack,
         sizeof (obj_private_data_t));
      obj_private->unwind_info = ((void*)0);
      obj_private->so_info = ((void*)0);
      so->objfile->obj_private = obj_private;
    }

  obj_private = (obj_private_data_t *) so->objfile->obj_private;
  obj_private->so_info = so;

  if (!bfd_check_format (so->abfd, bfd_object))
    {
      error ("\"%s\": not in executable format: %s.",
      name, bfd_errmsg (bfd_get_error ()));
    }
}
