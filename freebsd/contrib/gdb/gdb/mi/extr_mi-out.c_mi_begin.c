
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef TYPE_1__ mi_out_data ;
typedef enum ui_out_type { ____Placeholder_ui_out_type } ui_out_type ;


 int mi_open (struct ui_out*,char const*,int) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
mi_begin (struct ui_out *uiout,
   enum ui_out_type type,
   int level,
   const char *id)
{
  mi_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  mi_open (uiout, id, type);
}
