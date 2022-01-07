
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int cpu_halt () ;

__attribute__((used)) static void
db_halt(db_expr_t dummy, bool dummy2, db_expr_t dummy3, char *dummy4)
{

 cpu_halt();
}
