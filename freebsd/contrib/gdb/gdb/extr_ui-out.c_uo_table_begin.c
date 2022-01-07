
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {TYPE_1__* impl; } ;
struct TYPE_2__ {int (* table_begin ) (struct ui_out*,int,int,char const*) ;} ;


 int stub1 (struct ui_out*,int,int,char const*) ;

void
uo_table_begin (struct ui_out *uiout, int nbrofcols,
  int nr_rows,
  const char *tblid)
{
  if (!uiout->impl->table_begin)
    return;
  uiout->impl->table_begin (uiout, nbrofcols, nr_rows, tblid);
}
