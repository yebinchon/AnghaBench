
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
struct tui_data_element {int content; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct cleanup {int dummy; } ;


 int MAX_REGISTER_SIZE ;
 scalar_t__ TYPE_VECTOR (struct type*) ;
 int current_gdbarch ;
 int do_cleanups (struct cleanup*) ;
 int fprintf_filtered (struct ui_file*,char*,char const*) ;
 struct ui_file* gdb_stdout ;
 int gdbarch_print_registers_info (int ,struct ui_file*,struct frame_info*,int,int) ;
 char* gdbarch_register_name (struct gdbarch*,int) ;
 struct type* gdbarch_register_type (struct gdbarch*,int) ;
 int get_frame_register (struct frame_info*,int,char*) ;
 struct cleanup* make_cleanup (int ,void*) ;
 scalar_t__ pagination_enabled ;
 int print_scalar_formatted (char*,struct type*,float,int,struct ui_file*) ;
 int register_size (int ,int) ;
 char* strrchr (char*,char) ;
 char* tui_file_get_strbuf (struct ui_file*) ;
 int tui_restore_gdbout ;
 struct ui_file* tui_sfileopen (int) ;
 int xfree (int ) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
tui_register_format (struct gdbarch *gdbarch, struct frame_info *frame,
                     struct tui_data_element *data_element, int regnum)
{
  struct ui_file *stream;
  struct ui_file *old_stdout;
  const char *name;
  struct cleanup *cleanups;
  char *p, *s;
  int pos;
  struct type *type = gdbarch_register_type (gdbarch, regnum);

  name = gdbarch_register_name (gdbarch, regnum);
  if (name == 0)
    {
      return;
    }

  pagination_enabled = 0;
  old_stdout = gdb_stdout;
  stream = tui_sfileopen (256);
  gdb_stdout = stream;
  cleanups = make_cleanup (tui_restore_gdbout, (void*) old_stdout);
  if (TYPE_VECTOR (type) != 0 && 0)
    {
      char buf[MAX_REGISTER_SIZE];
      int len;

      len = register_size (current_gdbarch, regnum);
      fprintf_filtered (stream, "%-14s ", name);
      get_frame_register (frame, regnum, buf);
      print_scalar_formatted (buf, type, 'f', len, stream);
    }
  else
    {
      gdbarch_print_registers_info (current_gdbarch, stream,
                                    frame, regnum, 1);
    }


  p = tui_file_get_strbuf (stream);


  s = strrchr (p, '\n');
  if (s && s[1] == 0)
    *s = 0;

  xfree (data_element->content);
  data_element->content = xstrdup (p);
  do_cleanups (cleanups);
}
