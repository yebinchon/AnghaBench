
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out_data {int dummy; } ;
struct ui_out {struct ui_out_data* data; } ;



struct ui_out_data *
ui_out_data (struct ui_out *uiout)
{
  return uiout->data;
}
