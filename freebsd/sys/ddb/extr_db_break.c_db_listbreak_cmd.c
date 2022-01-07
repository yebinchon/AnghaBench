
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_list_breakpoints () ;

void
db_listbreak_cmd(db_expr_t dummy1, bool dummy2, db_expr_t dummy3, char *dummy4)
{
 db_list_breakpoints();
}
