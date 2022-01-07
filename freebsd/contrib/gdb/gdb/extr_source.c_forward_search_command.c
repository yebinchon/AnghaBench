
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nlines; int filename; int * line_charpos; } ;
typedef int LONGEST ;
typedef int FILE ;


 int EOF ;
 int FDOPEN_MODE ;
 int builtin_type_int ;
 int clearerr (int *) ;
 int close (int) ;
 int current_source_line ;
 TYPE_1__* current_source_symtab ;
 int error (char*,...) ;
 int fclose (int *) ;
 int * fdopen (int,int ) ;
 int find_source_lines (TYPE_1__*,int) ;
 int getc (int *) ;
 int last_line_listed ;
 int lines_to_list ;
 int lookup_internalvar (char*) ;
 scalar_t__ lseek (int,int ,int ) ;
 int max (int,int) ;
 int open_source_file (TYPE_1__*) ;
 int perror_with_name (int ) ;
 int print_source_lines (TYPE_1__*,int,int,int ) ;
 int printf_filtered (char*) ;
 scalar_t__ re_comp (char*) ;
 scalar_t__ re_exec (char*) ;
 int select_source_symtab (int ) ;
 int set_internalvar (int ,int ) ;
 int value_from_longest (int ,int ) ;
 char* xmalloc (int) ;
 char* xrealloc (char*,int) ;

__attribute__((used)) static void
forward_search_command (char *regex, int from_tty)
{
  int c;
  int desc;
  FILE *stream;
  int line;
  char *msg;

  line = last_line_listed + 1;

  msg = (char *) re_comp (regex);
  if (msg)
    error ("%s", msg);

  if (current_source_symtab == 0)
    select_source_symtab (0);

  desc = open_source_file (current_source_symtab);
  if (desc < 0)
    perror_with_name (current_source_symtab->filename);

  if (current_source_symtab->line_charpos == 0)
    find_source_lines (current_source_symtab, desc);

  if (line < 1 || line > current_source_symtab->nlines)
    {
      close (desc);
      error ("Expression not found");
    }

  if (lseek (desc, current_source_symtab->line_charpos[line - 1], 0) < 0)
    {
      close (desc);
      perror_with_name (current_source_symtab->filename);
    }

  stream = fdopen (desc, FDOPEN_MODE);
  clearerr (stream);
  while (1)
    {
      static char *buf = ((void*)0);
      char *p;
      int cursize, newsize;

      cursize = 256;
      buf = xmalloc (cursize);
      p = buf;

      c = getc (stream);
      if (c == EOF)
 break;
      do
 {
   *p++ = c;
   if (p - buf == cursize)
     {
       newsize = cursize + cursize / 2;
       buf = xrealloc (buf, newsize);
       p = buf + cursize;
       cursize = newsize;
     }
 }
      while (c != '\n' && (c = getc (stream)) >= 0);
      *p = 0;
      if (re_exec (buf) > 0)
 {

   fclose (stream);
   print_source_lines (current_source_symtab, line, line + 1, 0);
   set_internalvar (lookup_internalvar ("_"),
      value_from_longest (builtin_type_int,
            (LONGEST) line));
   current_source_line = max (line - lines_to_list / 2, 1);
   return;
 }
      line++;
    }

  printf_filtered ("Expression not found\n");
  fclose (stream);
}
