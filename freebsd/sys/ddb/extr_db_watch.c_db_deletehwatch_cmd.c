
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;


 int db_md_clr_watchpoint (int,int) ;
 int db_printf (char*) ;

void
db_deletehwatch_cmd(db_expr_t addr, bool have_addr, db_expr_t count,
   char *modif)
{
 int rc;

 if (count < 0)
  count = 4;

 rc = db_md_clr_watchpoint(addr, count);
 if (rc < 0)
  db_printf("hardware watchpoint could not be deleted\n");
}
