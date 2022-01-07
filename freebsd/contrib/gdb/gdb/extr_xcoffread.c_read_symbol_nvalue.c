
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_syment {int n_value; } ;
typedef int CORE_ADDR ;


 int read_symbol (struct internal_syment*,int) ;

__attribute__((used)) static CORE_ADDR
read_symbol_nvalue (int symno)
{
  struct internal_syment symbol[1];

  read_symbol (symbol, symno);
  return symbol->n_value;
}
