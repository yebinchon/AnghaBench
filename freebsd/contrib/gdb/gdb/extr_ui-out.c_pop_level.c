
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {scalar_t__ level; } ;
typedef enum ui_out_type { ____Placeholder_ui_out_type } ui_out_type ;
struct TYPE_2__ {int type; } ;


 scalar_t__ MAX_UI_OUT_LEVELS ;
 TYPE_1__* current_level (struct ui_out*) ;
 int gdb_assert (int) ;

__attribute__((used)) static int
pop_level (struct ui_out *uiout,
    enum ui_out_type type)
{

  gdb_assert (uiout->level > 0 && uiout->level < MAX_UI_OUT_LEVELS);
  gdb_assert (current_level (uiout)->type == type);
  uiout->level--;
  return uiout->level + 1;
}
