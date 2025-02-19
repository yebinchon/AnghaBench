
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int height; int width; void** content; } ;
struct tui_win_info {TYPE_3__ generic; } ;
struct TYPE_4__ {char* line; } ;
struct TYPE_5__ {TYPE_1__ source; } ;
struct tui_win_element {TYPE_2__ which_element; } ;
typedef enum tui_status { ____Placeholder_tui_status } tui_status ;


 int SRC_WIN ;
 int TUI_FAILURE ;
 int TUI_SUCCESS ;
 int fputs_unfiltered (char*,int ) ;
 int gdb_stderr ;
 scalar_t__ tui_alloc_content (int,int ) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;

enum tui_status
tui_alloc_source_buffer (struct tui_win_info *win_info)
{
  char *src_line_buf;
  int i, line_width, max_lines;
  enum tui_status ret = TUI_FAILURE;

  max_lines = win_info->generic.height;
  line_width = win_info->generic.width - 1;





  if (win_info->generic.content == ((void*)0))
    {
      src_line_buf = (char *) xmalloc ((max_lines * line_width) * sizeof (char));
      if (src_line_buf == (char *) ((void*)0))
 fputs_unfiltered (
    "Unable to Allocate Memory for Source or Disassembly Display.\n",
      gdb_stderr);
      else
 {

   if ((win_info->generic.content =
   (void **) tui_alloc_content (max_lines, SRC_WIN)) == ((void*)0))
     {
       xfree (src_line_buf);
       src_line_buf = (char *) ((void*)0);
       fputs_unfiltered (
     "Unable to Allocate Memory for Source or Disassembly Display.\n",
     gdb_stderr);
     }
 }
      for (i = 0; i < max_lines; i++)
 ((struct tui_win_element *)
  win_info->generic.content[i])->which_element.source.line =
   src_line_buf + (line_width * i);
      ret = TUI_SUCCESS;
    }
  else
    ret = TUI_SUCCESS;

  return ret;
}
