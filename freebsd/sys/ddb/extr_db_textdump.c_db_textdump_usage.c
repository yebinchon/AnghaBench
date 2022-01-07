
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_printf (char*) ;

__attribute__((used)) static void
db_textdump_usage(void)
{

 db_printf("textdump [unset|set|status|dump]\n");
}
