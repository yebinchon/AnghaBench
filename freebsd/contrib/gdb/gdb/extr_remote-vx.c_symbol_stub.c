
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int symbol_file_add_main (char*,int ) ;

__attribute__((used)) static int
symbol_stub (char *arg)
{
  symbol_file_add_main (arg, 0);
  return 1;
}
