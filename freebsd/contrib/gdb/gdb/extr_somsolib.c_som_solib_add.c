
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct target_ops {int dummy; } ;
struct stat {int dummy; } ;
struct TYPE_3__ {char* name; scalar_t__ text_addr; int struct_version; int bind_mode; int library_version; int text_link_addr; int text_end; int data_start; int bss_start; int data_end; int got_value; int next; scalar_t__ tsd_start_addr; } ;
struct so_list {TYPE_1__ som_solib; scalar_t__ solib_addr; struct so_list* next; int * objfile; } ;
struct minimal_symbol {int dummy; } ;
typedef int asection ;
struct TYPE_4__ {char* name; int objfile_obstack; int obfd; } ;
typedef int LONGEST ;
typedef scalar_t__ CORE_ADDR ;


 unsigned int DLD_FLAGS_LISTVALID ;
 unsigned int DLD_FLAGS_MAPPRIVATE ;
 scalar_t__ SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 char* alloca (unsigned int) ;
 int auto_solib_limit ;
 int * bfd_get_section_by_name (int ,char*) ;
 scalar_t__ bfd_section_size (int ,int *) ;
 int error (char*,...) ;
 scalar_t__ extract_unsigned_integer (char*,int) ;
 int hpux_address_to_host_pointer_hack (scalar_t__) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 int memset (char*,int ,int) ;
 char* obsavestring (char*,unsigned int,int *) ;
 int printf (char*,...) ;
 char* re_comp (char*) ;
 int reinit_frame_cache () ;
 struct so_list* so_list_head ;
 int som_solib_add_solib_objfile (struct so_list*,char*,int,scalar_t__) ;
 int som_solib_load_symbols (struct so_list*,char*,int,scalar_t__,struct target_ops*) ;
 int som_solib_sizeof_symbol_table (char*) ;
 int som_solib_st_size_threshold_exceeded ;
 int som_solib_total_st_size ;
 int stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_2__* symfile_objfile ;
 int target_read_memory (scalar_t__,char*,int) ;
 int warning (char*,...) ;
 scalar_t__ xmalloc (int) ;

void
som_solib_add (char *arg_string, int from_tty, struct target_ops *target, int readsyms)
{
  struct minimal_symbol *msymbol;
  struct so_list *so_list_tail;
  CORE_ADDR addr;
  asection *shlib_info;
  int status;
  unsigned int dld_flags;
  char buf[4], *re_err;
  int threshold_warning_given = 0;


  re_err = re_comp (arg_string ? arg_string : ".");
  if (re_err != ((void*)0))
    {
      error ("Invalid regexp: %s", re_err);
    }
  if (symfile_objfile == ((void*)0))
    return;


  shlib_info = bfd_get_section_by_name (symfile_objfile->obfd, "$SHLIB_INFO$");
  if (!shlib_info)
    return;


  if (bfd_section_size (symfile_objfile->obfd, shlib_info) == 0)
    return;

  msymbol = lookup_minimal_symbol ("__dld_flags", ((void*)0), ((void*)0));
  if (msymbol == ((void*)0))
    {
      error ("Unable to find __dld_flags symbol in object file.\n");
      return;
    }

  addr = SYMBOL_VALUE_ADDRESS (msymbol);

  status = target_read_memory (addr, buf, 4);
  if (status != 0)
    {
      error ("Unable to read __dld_flags\n");
      return;
    }
  dld_flags = extract_unsigned_integer (buf, 4);




  if ((dld_flags & DLD_FLAGS_LISTVALID) == 0)
    {
      if (from_tty)
 error ("__dld_list is not valid according to __dld_flags.\n");
      return;
    }


  if ((dld_flags & DLD_FLAGS_MAPPRIVATE) == 0)
    warning ("The shared libraries were not privately mapped; setting a\nbreakpoint in a shared library will not work until you rerun the program.\n");

  msymbol = lookup_minimal_symbol ("__dld_list", ((void*)0), ((void*)0));
  if (!msymbol)
    {


      msymbol = lookup_minimal_symbol ("__dld_flags", ((void*)0), ((void*)0));
      if (!msymbol)
 {
   error ("Unable to find dynamic library list.\n");
   return;
 }
      addr = SYMBOL_VALUE_ADDRESS (msymbol) - 8;
    }
  else
    addr = SYMBOL_VALUE_ADDRESS (msymbol);

  status = target_read_memory (addr, buf, 4);
  if (status != 0)
    {
      error ("Unable to find dynamic library list.\n");
      return;
    }

  addr = extract_unsigned_integer (buf, 4);




  if (addr == 0)
    goto old_dld;





  status = target_read_memory (addr, buf, 4);
  if (status != 0)
    {
      error ("Unable to find dynamic library list.\n");
      return;
    }



  addr = extract_unsigned_integer (buf, 4);




  so_list_tail = so_list_head;

  while (so_list_tail && so_list_tail->next)
    so_list_tail = so_list_tail->next;
  while (1)
    {
      CORE_ADDR name_addr, text_addr;
      unsigned int name_len;
      char *name;
      struct so_list *new_so;
      struct so_list *so_list = so_list_head;
      struct stat statbuf;
      LONGEST st_size;
      int is_main_program;

      if (addr == 0)
 break;


      status = target_read_memory (addr, buf, 4);
      if (status != 0)
 goto err;

      name_addr = extract_unsigned_integer (buf, 4);
      name_len = 0;
      while (1)
 {
   target_read_memory (name_addr + name_len, buf, 1);
   if (status != 0)
     goto err;

   name_len++;
   if (*buf == '\0')
     break;
 }
      name = alloca (name_len);
      status = target_read_memory (name_addr, name, name_len);
      if (status != 0)
 goto err;


      while (so_list)
 {
   if (!strcmp (so_list->som_solib.name, name))
     break;
   so_list = so_list->next;
 }



      status = stat (name, &statbuf);
      if (status == -1)
 {
   warning ("Can't find file %s referenced in dld_list.", name);

   status = target_read_memory (addr + 36, buf, 4);
   if (status != 0)
     goto err;

   addr = (CORE_ADDR) extract_unsigned_integer (buf, 4);
   continue;
 }


      is_main_program = (strcmp (name, symfile_objfile->name) == 0);
      if (so_list || is_main_program)
 {


   status = target_read_memory (addr + 36, buf, 4);
   if (status != 0)
     goto err;

   addr = (CORE_ADDR) extract_unsigned_integer (buf, 4);


   if (is_main_program && !so_list)
     {
       st_size = som_solib_sizeof_symbol_table (name);
       som_solib_total_st_size += st_size;
     }






   if (from_tty && so_list && !is_main_program && (so_list->objfile == ((void*)0)))
     som_solib_load_symbols (so_list,
        name,
        from_tty,
        so_list->som_solib.text_addr,
        target);

   continue;
 }

      name = obsavestring (name, name_len - 1,
      &symfile_objfile->objfile_obstack);

      status = target_read_memory (addr + 8, buf, 4);
      if (status != 0)
 goto err;

      text_addr = extract_unsigned_integer (buf, 4);

      new_so = (struct so_list *) xmalloc (sizeof (struct so_list));
      memset ((char *) new_so, 0, sizeof (struct so_list));
      if (so_list_head == ((void*)0))
 {
   so_list_head = new_so;
   so_list_tail = new_so;
 }
      else
 {
   so_list_tail->next = new_so;
   so_list_tail = new_so;
 }




      new_so->solib_addr = addr;
      new_so->som_solib.name = name;
      status = target_read_memory (addr + 4, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.struct_version = extract_unsigned_integer (buf + 3, 1);
      new_so->som_solib.bind_mode = extract_unsigned_integer (buf + 2, 1);



      new_so->som_solib.library_version = extract_unsigned_integer (buf, 2);
      new_so->som_solib.text_addr = text_addr;





      status = target_read_memory (addr + 12, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.text_link_addr = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 16, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.text_end = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 20, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.data_start = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 24, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.bss_start = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 28, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.data_end = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 32, buf, 4);
      if (status != 0)
 goto err;

      new_so->som_solib.got_value = extract_unsigned_integer (buf, 4);

      status = target_read_memory (addr + 36, buf, 4);
      if (status != 0)
 goto err;



      new_so->som_solib.next =
 hpux_address_to_host_pointer_hack (extract_unsigned_integer (buf, 4));





      status = target_read_memory (addr + 40, buf, 4);
      new_so->som_solib.tsd_start_addr = extract_unsigned_integer (buf, 4);
      if (status != 0)
 goto err;



      status = target_read_memory (new_so->som_solib.tsd_start_addr, buf, 4);
      new_so->som_solib.tsd_start_addr = extract_unsigned_integer (buf, 4);
      if (status != 0)
 goto err;
      addr = (CORE_ADDR) new_so->som_solib.next;
      st_size = som_solib_sizeof_symbol_table (name);
      som_solib_st_size_threshold_exceeded =
 !from_tty &&
 auto_solib_limit > 0 &&
 readsyms &&
 ((st_size + som_solib_total_st_size) > (auto_solib_limit * (LONGEST) (1024 * 1024)));

      if (som_solib_st_size_threshold_exceeded)
 {
   if (!threshold_warning_given)
     warning ("Symbols for some libraries have not been loaded, because\ndoing so would exceed the size threshold specified by auto-solib-limit.\nTo manually load symbols, use the 'sharedlibrary' command.\nTo raise the threshold, set auto-solib-limit to a larger value and rerun\nthe program.\n");
   threshold_warning_given = 1;







   som_solib_add_solib_objfile (new_so, name, from_tty, text_addr);
   continue;
 }

      som_solib_total_st_size += st_size;


      som_solib_load_symbols (new_so, name, from_tty, text_addr, target);
    }







  reinit_frame_cache ();
  return;

old_dld:
  error ("Debugging dynamic executables loaded via the hpux8 dld.sl is not supported.\n");
  return;

err:
  error ("Error while reading dynamic library list.\n");
  return;
}
