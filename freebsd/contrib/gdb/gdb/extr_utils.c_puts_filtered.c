
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs_filtered (char const*,int ) ;
 int gdb_stdout ;

void
puts_filtered (const char *string)
{
  fputs_filtered (string, gdb_stdout);
}
