
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_putc (char const) ;

__attribute__((used)) static void
db_puts(const char *str)
{
 int i;

 for (i = 0; str[i] != '\0'; i++)
  db_putc(str[i]);
}
