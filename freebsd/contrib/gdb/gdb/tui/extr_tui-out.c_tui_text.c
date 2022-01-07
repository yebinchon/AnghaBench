
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int line; int stream; scalar_t__ start_of_line; scalar_t__ suppress_output; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;


 int fputs_filtered (char const*,int ) ;
 scalar_t__ strchr (char const*,char) ;
 TYPE_1__* ui_out_data (struct ui_out*) ;

void
tui_text (struct ui_out *uiout, const char *string)
{
  tui_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  data->start_of_line ++;
  if (data->line > 0)
    {
      if (strchr (string, '\n') != 0)
        {
          data->line = -1;
          data->start_of_line = 0;
        }
      return;
    }
  if (strchr (string, '\n'))
    data->start_of_line = 0;
  fputs_filtered (string, data->stream);
}
