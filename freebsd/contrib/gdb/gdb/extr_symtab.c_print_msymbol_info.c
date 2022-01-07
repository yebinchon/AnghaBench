
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct minimal_symbol {int dummy; } ;
typedef int CORE_ADDR ;


 int SYMBOL_PRINT_NAME (struct minimal_symbol*) ;
 int SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int TARGET_ADDR_BIT ;
 char* local_hex_string_custom (int,char*) ;
 int printf_filtered (char*,char*,int ) ;

__attribute__((used)) static void
print_msymbol_info (struct minimal_symbol *msymbol)
{
  char *tmp;

  if (TARGET_ADDR_BIT <= 32)
    tmp = local_hex_string_custom (SYMBOL_VALUE_ADDRESS (msymbol)
       & (CORE_ADDR) 0xffffffff,
       "08l");
  else
    tmp = local_hex_string_custom (SYMBOL_VALUE_ADDRESS (msymbol),
       "016l");
  printf_filtered ("%s  %s\n",
     tmp, SYMBOL_PRINT_NAME (msymbol));
}
