
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int dummy; } ;
struct symtab_and_line {int line; int symtab; } ;


 struct symtabs_and_lines decode_line_1 (char**,int,int ,int ,char***,int *) ;
 int error (char*,...) ;
 struct symtab_and_line get_current_source_symtab_and_line () ;

struct symtabs_and_lines
decode_line_spec (char *string, int funfirstline)
{
  struct symtabs_and_lines sals;
  struct symtab_and_line cursal;

  if (string == 0)
    error ("Empty line specification.");



  cursal = get_current_source_symtab_and_line ();

  sals = decode_line_1 (&string, funfirstline,
   cursal.symtab, cursal.line,
   (char ***) ((void*)0), ((void*)0));

  if (*string)
    error ("Junk at end of line specification: %s", string);
  return sals;
}
