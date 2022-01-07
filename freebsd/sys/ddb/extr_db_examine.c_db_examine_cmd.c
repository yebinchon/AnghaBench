
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int db_expr_t ;
typedef int db_addr_t ;


 int db_examine (int ,int ,int) ;
 int db_examine_format ;
 int db_strcpy (int ,char*) ;

void
db_examine_cmd(db_expr_t addr, bool have_addr, db_expr_t count, char *modif)
{
 if (modif[0] != '\0')
     db_strcpy(db_examine_format, modif);

 if (count == -1)
     count = 1;

 db_examine((db_addr_t) addr, db_examine_format, count);
}
