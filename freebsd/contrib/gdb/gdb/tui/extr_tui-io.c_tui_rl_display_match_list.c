
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; } ;
struct TYPE_4__ {TYPE_1__ generic; } ;
typedef int QSFUNC ;


 TYPE_2__* TUI_CMD_WIN ;
 scalar_t__ get_y_or_n () ;
 int print_filename (char*,char*) ;
 char* printable_part (char*) ;
 int qsort (char**,int,int,int *) ;
 int rl_completion_query_items ;
 scalar_t__ rl_ignore_completion_duplicates ;
 int sprintf (char*,char*,int) ;
 int tui_putc (char) ;
 int tui_puts (char*) ;

__attribute__((used)) static void
tui_rl_display_match_list (char **matches, int len, int max)
{
  typedef int QSFUNC (const void *, const void *);
  extern int _rl_qsort_string_compare (char **, char **);
  extern int _rl_print_completions_horizontally;

  int count, limit, printed_len;
  int i, j, k, l;
  char *temp;


  int screenwidth = TUI_CMD_WIN->generic.width;



  if (len >= rl_completion_query_items)
    {
      char msg[256];

      sprintf (msg, "\nDisplay all %d possibilities? (y or n)", len);
      tui_puts (msg);
      if (get_y_or_n () == 0)
 {
   tui_puts ("\n");
   return;
 }
    }


  max += 2;
  limit = screenwidth / max;
  if (limit != 1 && (limit * max == screenwidth))
    limit--;



  if (limit == 0)
    limit = 1;


  count = (len + (limit - 1)) / limit;






  if (rl_ignore_completion_duplicates == 0)
    qsort (matches + 1, len, sizeof (char *),
           (QSFUNC *)_rl_qsort_string_compare);

  tui_putc ('\n');

  if (_rl_print_completions_horizontally == 0)
    {

      for (i = 1; i <= count; i++)
 {
   for (j = 0, l = i; j < limit; j++)
     {
       if (l > len || matches[l] == 0)
  break;
       else
  {
    temp = printable_part (matches[l]);
    printed_len = print_filename (temp, matches[l]);

    if (j + 1 < limit)
      for (k = 0; k < max - printed_len; k++)
        tui_putc (' ');
  }
       l += count;
     }
   tui_putc ('\n');
 }
    }
  else
    {

      for (i = 1; matches[i]; i++)
 {
   temp = printable_part (matches[i]);
   printed_len = print_filename (temp, matches[i]);

   if (matches[i+1])
     {
       if (i && (limit > 1) && (i % limit) == 0)
  tui_putc ('\n');
       else
  for (k = 0; k < max - printed_len; k++)
    tui_putc (' ');
     }
 }
      tui_putc ('\n');
    }
}
