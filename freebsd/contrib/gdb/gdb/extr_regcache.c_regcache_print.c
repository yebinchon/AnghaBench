
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
typedef enum regcache_dump_what { ____Placeholder_regcache_dump_what } regcache_dump_what ;


 int current_regcache ;
 struct ui_file* gdb_fopen (char*,char*) ;
 struct ui_file* gdb_stdout ;
 int perror_with_name (char*) ;
 int regcache_dump (int ,struct ui_file*,int) ;
 int ui_file_delete (struct ui_file*) ;

__attribute__((used)) static void
regcache_print (char *args, enum regcache_dump_what what_to_dump)
{
  if (args == ((void*)0))
    regcache_dump (current_regcache, gdb_stdout, what_to_dump);
  else
    {
      struct ui_file *file = gdb_fopen (args, "w");
      if (file == ((void*)0))
 perror_with_name ("maintenance print architecture");
      regcache_dump (current_regcache, file, what_to_dump);
      ui_file_delete (file);
    }
}
