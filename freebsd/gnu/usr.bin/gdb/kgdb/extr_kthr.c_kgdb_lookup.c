
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 int kgdb_parse (char*) ;

CORE_ADDR
kgdb_lookup(const char *sym)
{
 CORE_ADDR addr;
 char *name;

 asprintf(&name, "&%s", sym);
 addr = kgdb_parse(name);
 free(name);
 return (addr);
}
