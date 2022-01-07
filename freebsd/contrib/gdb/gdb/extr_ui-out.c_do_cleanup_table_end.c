
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;


 int ui_out_table_end (struct ui_out*) ;

__attribute__((used)) static void
do_cleanup_table_end (void *data)
{
  struct ui_out *ui_out = data;

  ui_out_table_end (ui_out);
}
