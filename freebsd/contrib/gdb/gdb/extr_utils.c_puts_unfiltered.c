
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs_unfiltered (char const*,int ) ;
 int gdb_stdout ;

void
puts_unfiltered (const char *string)
{
  fputs_unfiltered (string, gdb_stdout);
}
