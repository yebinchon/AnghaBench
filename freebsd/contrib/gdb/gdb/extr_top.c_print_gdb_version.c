
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;


 int fprintf_filtered (struct ui_file*,char*,...) ;
 int host_name ;
 scalar_t__ strcmp (int ,int ) ;
 int target_name ;
 int version ;

void
print_gdb_version (struct ui_file *stream)
{




  fprintf_filtered (stream, "GNU gdb %s\n", version);



  fprintf_filtered (stream, "Copyright 2004 Free Software Foundation, Inc.\n");






  fprintf_filtered (stream, "GDB is free software, covered by the GNU General Public License, and you are\nwelcome to change it and/or distribute copies of it under certain conditions.\nType \"show copying\" to see the conditions.\nThere is absolutely no warranty for GDB.  Type \"show warranty\" for details.\n");







  fprintf_filtered (stream, "This GDB was configured as \"");
  if (strcmp (host_name, target_name) != 0)
    {
      fprintf_filtered (stream, "--host=%s --target=%s", host_name, target_name);
    }
  else
    {
      fprintf_filtered (stream, "%s", host_name);
    }
  fprintf_filtered (stream, "\".");
}
