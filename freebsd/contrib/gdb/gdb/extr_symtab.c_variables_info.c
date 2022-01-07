
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VARIABLES_DOMAIN ;
 int symtab_symbol_info (char*,int ,int) ;

__attribute__((used)) static void
variables_info (char *regexp, int from_tty)
{
  symtab_symbol_info (regexp, VARIABLES_DOMAIN, from_tty);
}
