
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int db_add_symbol_table (char*,char*,char*,char*) ;
 int db_command_init () ;
 scalar_t__ kstrtab ;
 scalar_t__ ksymtab ;
 scalar_t__ ksymtab_size ;

__attribute__((used)) static int
db_init(void)
{

 db_command_init();

 if (ksymtab != 0 && kstrtab != 0 && ksymtab_size != 0) {
  db_add_symbol_table((char *)ksymtab,
      (char *)(ksymtab + ksymtab_size), "elf", (char *)kstrtab);
 }
 db_add_symbol_table(((void*)0), ((void*)0), "kld", ((void*)0));
 return (1);
}
