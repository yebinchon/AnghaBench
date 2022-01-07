
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_flush_lex () ;
 int db_printf (char*,char const*) ;
 int kdb_reenter_silent () ;

void
db_error(const char *s)
{
 if (s)
     db_printf("%s", s);
 db_flush_lex();
 kdb_reenter_silent();
}
