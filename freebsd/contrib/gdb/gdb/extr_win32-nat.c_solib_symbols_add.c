
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct section_addr_info {TYPE_1__* other; } ;
struct objfile {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {char* name; int addr; } ;
typedef int CORE_ADDR ;


 int OBJF_SHARED ;
 struct section_addr_info* alloc_section_addr_info (int) ;
 scalar_t__ bfd_check_format (int *,int ) ;
 int bfd_close (int *) ;
 int bfd_object ;
 int * bfd_openr (char*,char*) ;
 int do_cleanups (struct cleanup*) ;
 int free_section_addr_info (struct section_addr_info*) ;
 struct section_addr_info* get_relocated_section_addrs (int *,int ) ;
 struct cleanup* make_cleanup (int ,struct section_addr_info*) ;
 struct objfile* safe_symbol_file_add (char*,int,struct section_addr_info*,int ,int ) ;
 int xfree ;

__attribute__((used)) static struct objfile *
solib_symbols_add (char *name, int from_tty, CORE_ADDR load_addr)
{
  struct section_addr_info *addrs = ((void*)0);
  static struct objfile *result = ((void*)0);
  bfd *abfd = ((void*)0);





  if (!name || !name[0])
    return ((void*)0);

  abfd = bfd_openr (name, "pei-i386");

  if (!abfd)
    {

      abfd = bfd_openr (name, "pe-i386");
    }

  if (abfd)
    {
      if (bfd_check_format (abfd, bfd_object))
 {
   addrs = get_relocated_section_addrs (abfd, load_addr);
 }

      bfd_close (abfd);
    }

  if (addrs)
    {
      result = safe_symbol_file_add (name, from_tty, addrs, 0, OBJF_SHARED);
      free_section_addr_info (addrs);
    }
  else
    {

      struct cleanup *my_cleanups;

      addrs = alloc_section_addr_info (1);
      my_cleanups = make_cleanup (xfree, addrs);
      addrs->other[0].name = ".text";
      addrs->other[0].addr = load_addr;

      result = safe_symbol_file_add (name, from_tty, addrs, 0, OBJF_SHARED);
      do_cleanups (my_cleanups);
    }

  return result;
}
