
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int line_no; } ;
struct TYPE_14__ {char* line; int is_exec_point; TYPE_4__ line_or_addr; } ;
struct TYPE_15__ {int line_no; int file_name; } ;
struct TYPE_16__ {TYPE_5__ source; TYPE_6__ locator; } ;
struct tui_win_element {TYPE_7__ which_element; } ;
struct TYPE_11__ {int line_no; } ;
struct tui_source_info {char* filename; int horizontal_offset; TYPE_2__ start_line_or_addr; } ;
struct tui_gen_win_info {scalar_t__* content; } ;
struct symtab {char* filename; int nlines; int * line_charpos; } ;
typedef enum tui_status { ____Placeholder_tui_status } tui_status ;
struct TYPE_12__ {int width; int height; char* title; int content_size; scalar_t__* content; } ;
struct TYPE_10__ {struct tui_source_info source_info; } ;
struct TYPE_17__ {TYPE_3__ generic; TYPE_1__ detail; } ;
typedef int FILE ;


 int EOF ;
 int FOPEN_RT ;
 int TUI_FAILURE ;
 TYPE_8__* TUI_SRC_WIN ;
 int TUI_SUCCESS ;
 char* alloca (int) ;
 int clearerr (int *) ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,int ) ;
 int fgetc (int *) ;
 int find_source_lines (struct symtab*,int) ;
 scalar_t__ lseek (int,int ,int ) ;
 int open_source_file (struct symtab*) ;
 int perror_with_name (char*) ;
 int print_sys_errmsg (char*,int ) ;
 int printf_unfiltered (char*,int,char*,int) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int tui_alloc_source_buffer (TYPE_8__*) ;
 int tui_default_tab_len () ;
 struct tui_gen_win_info* tui_locator_win_info_ptr () ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;
 void* xstrdup (char*) ;

enum tui_status
tui_set_source_content (struct symtab *s, int line_no, int noerror)
{
  enum tui_status ret = TUI_FAILURE;

  if (s != (struct symtab *) ((void*)0) && s->filename != (char *) ((void*)0))
    {
      FILE *stream;
      int i, desc, c, line_width, nlines;
      char *src_line = 0;

      if ((ret = tui_alloc_source_buffer (TUI_SRC_WIN)) == TUI_SUCCESS)
 {
   line_width = TUI_SRC_WIN->generic.width - 1;


   nlines = (line_no + (TUI_SRC_WIN->generic.height - 2)) - line_no;
   desc = open_source_file (s);
   if (desc < 0)
     {
       if (!noerror)
  {
    char *name = alloca (strlen (s->filename) + 100);
    sprintf (name, "%s:%d", s->filename, line_no);
    print_sys_errmsg (name, errno);
  }
       ret = TUI_FAILURE;
     }
   else
     {
       if (s->line_charpos == 0)
  find_source_lines (s, desc);

       if (line_no < 1 || line_no > s->nlines)
  {
    close (desc);
    printf_unfiltered (
     "Line number %d out of range; %s has %d lines.\n",
          line_no, s->filename, s->nlines);
  }
       else if (lseek (desc, s->line_charpos[line_no - 1], 0) < 0)
  {
    close (desc);
    perror_with_name (s->filename);
  }
       else
  {
    int offset, cur_line_no, cur_line, cur_len, threshold;
    struct tui_gen_win_info * locator = tui_locator_win_info_ptr ();
                  struct tui_source_info * src = &TUI_SRC_WIN->detail.source_info;

                  if (TUI_SRC_WIN->generic.title)
                    xfree (TUI_SRC_WIN->generic.title);
                  TUI_SRC_WIN->generic.title = xstrdup (s->filename);

                  if (src->filename)
                    xfree (src->filename);
                  src->filename = xstrdup (s->filename);



    offset = src->horizontal_offset;
    threshold = (line_width - 1) + offset;
    stream = fdopen (desc, FOPEN_RT);
    clearerr (stream);
    cur_line = 0;
    cur_line_no = src->start_line_or_addr.line_no = line_no;
    if (offset > 0)
      src_line = (char *) xmalloc (
        (threshold + 1) * sizeof (char));
    while (cur_line < nlines)
      {
        struct tui_win_element * element = (struct tui_win_element *)
        TUI_SRC_WIN->generic.content[cur_line];


        c = fgetc (stream);

        if (offset == 0)
   src_line = ((struct tui_win_element *)
       TUI_SRC_WIN->generic.content[
     cur_line])->which_element.source.line;

        sprintf (src_line, "%-6d", cur_line_no);
        cur_len = strlen (src_line);
        i = cur_len -
   ((cur_len / tui_default_tab_len ()) * tui_default_tab_len ());
        while (i < tui_default_tab_len ())
   {
     src_line[cur_len] = ' ';
     i++;
     cur_len++;
   }
        src_line[cur_len] = (char) 0;



        element->which_element.source.line_or_addr.line_no =
   cur_line_no;
        element->which_element.source.is_exec_point =
   (strcmp (((struct tui_win_element *)
   locator->content[0])->which_element.locator.file_name,
     s->filename) == 0
    && cur_line_no == ((struct tui_win_element *)
    locator->content[0])->which_element.locator.line_no);
        if (c != EOF)
   {
     i = strlen (src_line) - 1;
     do
       {
         if ((c != '\n') &&
      (c != '\r') && (++i < threshold))
    {
      if (c < 040 && c != '\t')
        {
          src_line[i++] = '^';
          src_line[i] = c + 0100;
        }
      else if (c == 0177)
        {
          src_line[i++] = '^';
          src_line[i] = '?';
        }
      else
        {




          if (c == '\t')
     {
       int j, max_tab_len = tui_default_tab_len ();

       for (j = i - (
            (i / max_tab_len) * max_tab_len);
            ((j < max_tab_len) &&
      i < threshold);
            i++, j++)
         src_line[i] = ' ';
       i--;
     }
          else
     src_line[i] = c;
        }
      src_line[i + 1] = 0;
    }
         else
    {

      while (c != EOF && c != '\n' && c != '\r')
        c = fgetc (stream);
    }
       }
     while (c != EOF && c != '\n' && c != '\r' &&
     i < threshold && (c = fgetc (stream)));
   }

        if (strlen (src_line) > offset)
   strcpy (((struct tui_win_element *) TUI_SRC_WIN->generic.content[
     cur_line])->which_element.source.line,
    &src_line[offset]);
        else
   ((struct tui_win_element *)
    TUI_SRC_WIN->generic.content[
     cur_line])->which_element.source.line[0] = (char) 0;
        cur_line++;
        cur_line_no++;
      }
    if (offset > 0)
      xfree (src_line);
    fclose (stream);
    TUI_SRC_WIN->generic.content_size = nlines;
    ret = TUI_SUCCESS;
  }
     }
 }
    }
  return ret;
}
