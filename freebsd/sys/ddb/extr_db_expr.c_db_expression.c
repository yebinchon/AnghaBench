
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_logical_or_expr (int *) ;

int
db_expression(db_expr_t *valuep)
{
 return (db_logical_or_expr(valuep));
}
