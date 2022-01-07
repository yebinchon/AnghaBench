
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
typedef enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_2__ {int (* table_header ) (struct ui_out*,int,int,char const*,char const*) ;} ;


 int stub1 (struct ui_out*,int,int,char const*,char const*) ;

void
uo_table_header (struct ui_out *uiout, int width, enum ui_align align,
   const char *col_name,
   const char *colhdr)
{
  if (!uiout->impl->table_header)
    return;
  uiout->impl->table_header (uiout, width, align, col_name, colhdr);
}
