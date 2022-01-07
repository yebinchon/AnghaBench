
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;


 struct cleanup* make_cleanup_ui_out_end (struct ui_out*,int ) ;
 int ui_out_begin (struct ui_out*,int ,char const*) ;
 int ui_out_type_tuple ;

struct cleanup *
make_cleanup_ui_out_tuple_begin_end (struct ui_out *uiout,
         const char *id)
{
  ui_out_begin (uiout, ui_out_type_tuple, id);
  return make_cleanup_ui_out_end (uiout, ui_out_type_tuple);
}
