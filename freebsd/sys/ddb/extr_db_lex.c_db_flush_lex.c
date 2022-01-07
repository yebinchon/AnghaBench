
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_flush_line () ;
 scalar_t__ db_look_char ;
 scalar_t__ db_look_token ;

void
db_flush_lex(void)
{
 db_flush_line();
 db_look_char = 0;
 db_look_token = 0;
}
