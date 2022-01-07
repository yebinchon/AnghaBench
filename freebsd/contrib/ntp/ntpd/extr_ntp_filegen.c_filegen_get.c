
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filegen_entry {char const* name; struct filegen_entry* next; int * filegen; } ;
typedef int FILEGEN ;


 int DPRINTF (int,char*) ;
 struct filegen_entry* filegen_registry ;
 scalar_t__ strcmp (char const*,char const*) ;

FILEGEN *
filegen_get(
 const char * name
 )
{
 struct filegen_entry *f = filegen_registry;

 while (f) {
  if (f->name == name || strcmp(name, f->name) == 0) {
   DPRINTF(4, ("filegen_get(%s) = %p\n",
        name, f->filegen));
   return f->filegen;
  }
  f = f->next;
 }
 DPRINTF(4, ("filegen_get(%s) = NULL\n", name));
 return ((void*)0);
}
