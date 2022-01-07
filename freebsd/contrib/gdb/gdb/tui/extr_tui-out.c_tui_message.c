
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int stream; scalar_t__ suppress_output; } ;
typedef TYPE_1__ tui_out_data ;
struct ui_out {int dummy; } ;


 TYPE_1__* ui_out_data (struct ui_out*) ;
 int ui_out_get_verblvl (struct ui_out*) ;
 int vfprintf_unfiltered (int ,char const*,int ) ;

void
tui_message (struct ui_out *uiout, int verbosity,
      const char *format, va_list args)
{
  tui_out_data *data = ui_out_data (uiout);
  if (data->suppress_output)
    return;
  if (ui_out_get_verblvl (uiout) >= verbosity)
    vfprintf_unfiltered (data->stream, format, args);
}
