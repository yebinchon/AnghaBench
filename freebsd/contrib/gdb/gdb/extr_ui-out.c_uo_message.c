
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
struct ui_out {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* message ) (struct ui_out*,int,char const*,int ) ;} ;


 int stub1 (struct ui_out*,int,char const*,int ) ;

void
uo_message (struct ui_out *uiout, int verbosity,
     const char *format,
     va_list args)
{
  if (!uiout->impl->message)
    return;
  uiout->impl->message (uiout, verbosity, format, args);
}
