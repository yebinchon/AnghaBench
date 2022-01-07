
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_lasterr ;
 char* ui_file_xstrdup (int ,long*) ;

char *
error_last_message (void)
{
  long len;
  return ui_file_xstrdup (gdb_lasterr, &len);
}
