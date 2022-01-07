
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {int dummy; } ;


 int print_source_lines_base (struct symtab*,int,int,int) ;

void
print_source_lines (struct symtab *s, int line, int stopline, int noerror)
{
  print_source_lines_base (s, line, stopline, noerror);
}
