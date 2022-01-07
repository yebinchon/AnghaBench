
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_regno (char*) ;

__attribute__((used)) static int
ppc_cannot_store_register (int regno)
{

  if (regno == find_regno ("fpscr"))
    return 2;

  return 0;
}
