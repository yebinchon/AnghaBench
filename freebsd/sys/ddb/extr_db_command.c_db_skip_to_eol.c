
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_read_token () ;
 int tEOL ;

void
db_skip_to_eol(void)
{
 int t;
 do {
     t = db_read_token();
 } while (t != tEOL);
}
