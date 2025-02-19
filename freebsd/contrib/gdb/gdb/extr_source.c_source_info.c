
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {char* filename; char* dirname; char* fullname; int nlines; char* debugformat; scalar_t__ macro_table; int language; } ;


 struct symtab* current_source_symtab ;
 char* language_str (int ) ;
 int printf_filtered (char*,...) ;

__attribute__((used)) static void
source_info (char *ignore, int from_tty)
{
  struct symtab *s = current_source_symtab;

  if (!s)
    {
      printf_filtered ("No current source file.\n");
      return;
    }
  printf_filtered ("Current source file is %s\n", s->filename);
  if (s->dirname)
    printf_filtered ("Compilation directory is %s\n", s->dirname);
  if (s->fullname)
    printf_filtered ("Located in %s\n", s->fullname);
  if (s->nlines)
    printf_filtered ("Contains %d line%s.\n", s->nlines,
       s->nlines == 1 ? "" : "s");

  printf_filtered ("Source language is %s.\n", language_str (s->language));
  printf_filtered ("Compiled with %s debugging format.\n", s->debugformat);
  printf_filtered ("%s preprocessor macro info.\n",
                   s->macro_table ? "Includes" : "Does not include");
}
