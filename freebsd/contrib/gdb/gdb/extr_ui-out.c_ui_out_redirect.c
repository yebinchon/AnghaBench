
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct ui_file {int dummy; } ;


 int uo_redirect (struct ui_out*,struct ui_file*) ;

int
ui_out_redirect (struct ui_out *uiout, struct ui_file *outstream)
{
  return uo_redirect (uiout, outstream);
}
