
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_out {int dummy; } ;
struct cleanup {int dummy; } ;


 int do_cleanup_table_end ;
 struct cleanup* make_cleanup (int ,struct ui_out*) ;
 int ui_out_table_begin (struct ui_out*,int,int,char const*) ;

struct cleanup *
make_cleanup_ui_out_table_begin_end (struct ui_out *ui_out, int nr_cols,
                                     int nr_rows, const char *tblid)
{
  ui_out_table_begin (ui_out, nr_cols, nr_rows, tblid);
  return make_cleanup (do_cleanup_table_end, ui_out);
}
