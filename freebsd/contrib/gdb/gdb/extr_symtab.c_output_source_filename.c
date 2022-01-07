
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ filename_seen (char*,int,int*) ;
 int fputs_filtered (char*,int ) ;
 int gdb_stdout ;
 int printf_filtered (char*) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
output_source_filename (char *name, int *first)
{
  if (filename_seen (name, 1, first))
    {

      return;
    }

  if (*first)
    {
      *first = 0;
    }
  else
    {
      printf_filtered (", ");
    }

  wrap_here ("");
  fputs_filtered (name, gdb_stdout);
}
