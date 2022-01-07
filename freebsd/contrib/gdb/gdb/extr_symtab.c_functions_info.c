
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FUNCTIONS_DOMAIN ;
 int symtab_symbol_info (char*,int ,int) ;

__attribute__((used)) static void
functions_info (char *regexp, int from_tty)
{
  symtab_symbol_info (regexp, FUNCTIONS_DOMAIN, from_tty);
}
