
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int name ;


 int demangle ;
 int get_frame_pc (struct frame_info*) ;
 int print_address_symbolic (int ,struct ui_file*,int ,char*) ;
 char* strchr (char*,char) ;
 int strncpy (char*,char*,int) ;
 char* tui_file_get_strbuf (struct ui_file*) ;
 struct ui_file* tui_sfileopen (int) ;
 int ui_file_delete (struct ui_file*) ;

__attribute__((used)) static char*
tui_get_function_from_frame (struct frame_info *fi)
{
  static char name[256];
  struct ui_file *stream = tui_sfileopen (256);
  char *p;

  print_address_symbolic (get_frame_pc (fi), stream, demangle, "");
  p = tui_file_get_strbuf (stream);




  if (*p == '<')
    p++;
  strncpy (name, p, sizeof (name));
  p = strchr (name, '(');
  if (!p)
    p = strchr (name, '>');
  if (p)
    *p = 0;
  p = strchr (name, '+');
  if (p)
    *p = 0;
  ui_file_delete (stream);
  return name;
}
