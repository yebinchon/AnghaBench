
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_fns {int sym_flavour; struct sym_fns* next; } ;
struct objfile {int obfd; struct sym_fns* sf; } ;
typedef enum bfd_flavour { ____Placeholder_bfd_flavour } bfd_flavour ;


 int bfd_get_flavour (int ) ;
 char* bfd_get_target (int ) ;
 int bfd_target_ihex_flavour ;
 int bfd_target_srec_flavour ;
 int bfd_target_tekhex_flavour ;
 int error (char*,char*) ;
 struct sym_fns* symtab_fns ;

__attribute__((used)) static void
find_sym_fns (struct objfile *objfile)
{
  struct sym_fns *sf;
  enum bfd_flavour our_flavour = bfd_get_flavour (objfile->obfd);
  char *our_target = bfd_get_target (objfile->obfd);

  if (our_flavour == bfd_target_srec_flavour
      || our_flavour == bfd_target_ihex_flavour
      || our_flavour == bfd_target_tekhex_flavour)
    return;

  for (sf = symtab_fns; sf != ((void*)0); sf = sf->next)
    {
      if (our_flavour == sf->sym_flavour)
 {
   objfile->sf = sf;
   return;
 }
    }
  error ("I'm sorry, Dave, I can't do that.  Symbol format `%s' unknown.",
  bfd_get_target (objfile->obfd));
}
