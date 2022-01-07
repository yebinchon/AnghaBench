
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
typedef enum gdb_rc { ____Placeholder_gdb_rc } gdb_rc ;


 int RETURN_MASK_ALL ;
 int catch_exceptions (struct ui_out*,int ,char*,int *,int ) ;
 int do_captured_thread_select ;

enum gdb_rc
gdb_thread_select (struct ui_out *uiout, char *tidstr)
{
  return catch_exceptions (uiout, do_captured_thread_select, tidstr,
      ((void*)0), RETURN_MASK_ALL);
}
