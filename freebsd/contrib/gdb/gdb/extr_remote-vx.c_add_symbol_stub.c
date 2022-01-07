
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ldfile {int bss_addr; int data_addr; int txt_addr; int name; } ;


 int printf_unfiltered (char*,...) ;
 int vx_add_symbols (int ,int ,int ,int ,int ) ;

__attribute__((used)) static int
add_symbol_stub (char *arg)
{
  struct ldfile *pLoadFile = (struct ldfile *) arg;

  printf_unfiltered ("\t%s: ", pLoadFile->name);
  vx_add_symbols (pLoadFile->name, 0, pLoadFile->txt_addr,
    pLoadFile->data_addr, pLoadFile->bss_addr);
  printf_unfiltered ("ok\n");
  return 1;
}
