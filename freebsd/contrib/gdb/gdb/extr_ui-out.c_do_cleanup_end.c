
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out_end_cleanup_data {int type; int uiout; } ;


 int ui_out_end (int ,int ) ;
 int xfree (struct ui_out_end_cleanup_data*) ;

__attribute__((used)) static void
do_cleanup_end (void *data)
{
  struct ui_out_end_cleanup_data *end_cleanup_data = data;
  ui_out_end (end_cleanup_data->uiout, end_cleanup_data->type);
  xfree (end_cleanup_data);
}
