
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {scalar_t__ fullname; int nlines; int * line_charpos; } ;
typedef int CORE_ADDR ;


 int annotate_source (scalar_t__,int,int ,int,int ) ;
 int current_source_line ;
 struct symtab* current_source_symtab ;
 int first_line_listed ;
 int get_filename_and_charpos (struct symtab*,char**) ;
 int last_line_listed ;

int
identify_source_line (struct symtab *s, int line, int mid_statement,
        CORE_ADDR pc)
{
  if (s->line_charpos == 0)
    get_filename_and_charpos (s, (char **) ((void*)0));
  if (s->fullname == 0)
    return 0;
  if (line > s->nlines)

    return 0;
  annotate_source (s->fullname, line, s->line_charpos[line - 1],
     mid_statement, pc);

  current_source_line = line;
  first_line_listed = line;
  last_line_listed = line;
  current_source_symtab = s;
  return 1;
}
