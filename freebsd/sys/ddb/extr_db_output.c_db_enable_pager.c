
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ db_lines_per_page ;
 scalar_t__ db_maxlines ;
 scalar_t__ db_newlines ;
 scalar_t__ db_pager_quit ;

void
db_enable_pager(void)
{
 if (db_maxlines == 0) {
  db_maxlines = db_lines_per_page;
  db_newlines = 0;
  db_pager_quit = 0;
 }
}
