
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct reggroup {int dummy; } ;
struct regcache {TYPE_1__* descr; } ;
struct gdbarch {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum regcache_dump_what { ____Placeholder_regcache_dump_what } regcache_dump_what ;
struct TYPE_2__ {int legacy_p; int nr_raw_registers; int nr_cooked_registers; int sizeof_raw_registers; int sizeof_raw_register_valid_p; int* register_offset; int* sizeof_register; struct gdbarch* gdbarch; } ;


 long DEPRECATED_REGISTER_BYTE (int) ;
 int DEPRECATED_REGISTER_RAW_SIZE (int) ;
 int DEPRECATED_REGISTER_VIRTUAL_SIZE (int) ;
 int MAX_REGISTER_SIZE ;
 int NUM_PSEUDO_REGS ;
 int NUM_REGS ;
 char* REGISTER_NAME (int) ;
 int TARGET_BYTE_ORDER ;
 int TYPE_LENGTH (int ) ;
 char* TYPE_NAME (int ) ;
 int do_cleanups (struct cleanup*) ;
 int dump_endian_bytes (struct ui_file*,int ,unsigned char*,int) ;
 int fprintf_unfiltered (struct ui_file*,char*,...) ;
 int gdb_assert (int) ;
 scalar_t__ gdbarch_register_reggroup_p (struct gdbarch*,int,struct reggroup*) ;
 struct cleanup* make_cleanup (int ,char*) ;
 int null_cleanup ;
 int regcache_cooked_read (struct regcache*,int,unsigned char*) ;
 int regcache_dump_cooked ;
 int regcache_dump_groups ;
 int regcache_dump_raw ;
 int regcache_raw_read (struct regcache*,int,unsigned char*) ;
 int regcache_valid_p (struct regcache*,int) ;
 int reggroup_name (struct reggroup*) ;
 struct reggroup* reggroup_next (struct gdbarch*,struct reggroup*) ;
 int register_type (struct gdbarch*,int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;
 int xasprintf (char**,char*,int) ;
 int xfree ;

__attribute__((used)) static void
regcache_dump (struct regcache *regcache, struct ui_file *file,
        enum regcache_dump_what what_to_dump)
{
  struct cleanup *cleanups = make_cleanup (null_cleanup, ((void*)0));
  struct gdbarch *gdbarch = regcache->descr->gdbarch;
  int regnum;
  int footnote_nr = 0;
  int footnote_register_size = 0;
  int footnote_register_offset = 0;
  int footnote_register_type_name_null = 0;
  long register_offset = 0;
  unsigned char buf[MAX_REGISTER_SIZE];
  gdb_assert (regcache->descr->nr_cooked_registers
       == (NUM_REGS + NUM_PSEUDO_REGS));

  for (regnum = -1; regnum < regcache->descr->nr_cooked_registers; regnum++)
    {

      if (regnum < 0)
 fprintf_unfiltered (file, " %-10s", "Name");
      else
 {
   const char *p = REGISTER_NAME (regnum);
   if (p == ((void*)0))
     p = "";
   else if (p[0] == '\0')
     p = "''";
   fprintf_unfiltered (file, " %-10s", p);
 }


      if (regnum < 0)
 fprintf_unfiltered (file, " %4s", "Nr");
      else
 fprintf_unfiltered (file, " %4d", regnum);


      if (regnum < 0)
 fprintf_unfiltered (file, " %4s", "Rel");
      else if (regnum < NUM_REGS)
 fprintf_unfiltered (file, " %4d", regnum);
      else
 fprintf_unfiltered (file, " %4d", (regnum - NUM_REGS));


      if (regnum < 0)
 fprintf_unfiltered (file, " %6s  ", "Offset");
      else
 {
   fprintf_unfiltered (file, " %6ld",
         regcache->descr->register_offset[regnum]);
   if (register_offset != regcache->descr->register_offset[regnum]
       || register_offset != DEPRECATED_REGISTER_BYTE (regnum)
       || (regnum > 0
    && (regcache->descr->register_offset[regnum]
        != (regcache->descr->register_offset[regnum - 1]
     + regcache->descr->sizeof_register[regnum - 1])))
       )
     {
       if (!footnote_register_offset)
  footnote_register_offset = ++footnote_nr;
       fprintf_unfiltered (file, "*%d", footnote_register_offset);
     }
   else
     fprintf_unfiltered (file, "  ");
   register_offset = (regcache->descr->register_offset[regnum]
        + regcache->descr->sizeof_register[regnum]);
 }


      if (regnum < 0)
 fprintf_unfiltered (file, " %5s ", "Size");
      else
 {
   fprintf_unfiltered (file, " %5ld",
         regcache->descr->sizeof_register[regnum]);
   if ((regcache->descr->sizeof_register[regnum]
        != DEPRECATED_REGISTER_RAW_SIZE (regnum))
       || (regcache->descr->sizeof_register[regnum]
    != DEPRECATED_REGISTER_VIRTUAL_SIZE (regnum))
       || (regcache->descr->sizeof_register[regnum]
    != TYPE_LENGTH (register_type (regcache->descr->gdbarch,
       regnum)))
       )
     {
       if (!footnote_register_size)
  footnote_register_size = ++footnote_nr;
       fprintf_unfiltered (file, "*%d", footnote_register_size);
     }
   else
     fprintf_unfiltered (file, " ");
 }


      {
 const char *t;
 if (regnum < 0)
   t = "Type";
 else
   {
     static const char blt[] = "builtin_type";
     t = TYPE_NAME (register_type (regcache->descr->gdbarch, regnum));
     if (t == ((void*)0))
       {
  char *n;
  if (!footnote_register_type_name_null)
    footnote_register_type_name_null = ++footnote_nr;
  xasprintf (&n, "*%d", footnote_register_type_name_null);
  make_cleanup (xfree, n);
  t = n;
       }

     if (strncmp (t, blt, strlen (blt)) == 0)
       t += strlen (blt);
   }
 fprintf_unfiltered (file, " %-15s", t);
      }


      fprintf_unfiltered (file, " ");


      if (what_to_dump == regcache_dump_raw)
 {
   if (regnum < 0)
     fprintf_unfiltered (file, "Raw value");
   else if (regnum >= regcache->descr->nr_raw_registers)
     fprintf_unfiltered (file, "<cooked>");
   else if (!regcache_valid_p (regcache, regnum))
     fprintf_unfiltered (file, "<invalid>");
   else
     {
       regcache_raw_read (regcache, regnum, buf);
       fprintf_unfiltered (file, "0x");
       dump_endian_bytes (file, TARGET_BYTE_ORDER, buf,
     DEPRECATED_REGISTER_RAW_SIZE (regnum));
     }
 }


      if (what_to_dump == regcache_dump_cooked)
 {
   if (regnum < 0)
     fprintf_unfiltered (file, "Cooked value");
   else
     {
       regcache_cooked_read (regcache, regnum, buf);
       fprintf_unfiltered (file, "0x");
       dump_endian_bytes (file, TARGET_BYTE_ORDER, buf,
     DEPRECATED_REGISTER_VIRTUAL_SIZE (regnum));
     }
 }


      if (what_to_dump == regcache_dump_groups)
 {
   if (regnum < 0)
     fprintf_unfiltered (file, "Groups");
   else
     {
       const char *sep = "";
       struct reggroup *group;
       for (group = reggroup_next (gdbarch, ((void*)0));
     group != ((void*)0);
     group = reggroup_next (gdbarch, group))
  {
    if (gdbarch_register_reggroup_p (gdbarch, regnum, group))
      {
        fprintf_unfiltered (file, "%s%s", sep, reggroup_name (group));
        sep = ",";
      }
  }
     }
 }

      fprintf_unfiltered (file, "\n");
    }

  if (footnote_register_size)
    fprintf_unfiltered (file, "*%d: Inconsistent register sizes.\n",
   footnote_register_size);
  if (footnote_register_offset)
    fprintf_unfiltered (file, "*%d: Inconsistent register offsets.\n",
   footnote_register_offset);
  if (footnote_register_type_name_null)
    fprintf_unfiltered (file,
   "*%d: Register type's name NULL.\n",
   footnote_register_type_name_null);
  do_cleanups (cleanups);
}
