
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint {int line_number; int * source_file; int address; int number; } ;


 scalar_t__ addressprint ;
 int gdb_stdout ;
 int print_address_numeric (int ,int,int ) ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
trace_mention (struct tracepoint *tp)
{
  printf_filtered ("Tracepoint %d", tp->number);

  if (addressprint || (tp->source_file == ((void*)0)))
    {
      printf_filtered (" at ");
      print_address_numeric (tp->address, 1, gdb_stdout);
    }
  if (tp->source_file)
    printf_filtered (": file %s, line %d.",
       tp->source_file, tp->line_number);

  printf_filtered ("\n");
}
