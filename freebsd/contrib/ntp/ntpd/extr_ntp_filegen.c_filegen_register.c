
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filegen_entry {char const* name; int * filegen; struct filegen_entry* next; } ;
typedef int FILEGEN ;


 int DPRINTF (int,char*) ;
 struct filegen_entry* emalloc (int) ;
 char const* estrdup (char const*) ;
 int filegen_init (char const*,char const*,int *) ;
 struct filegen_entry* filegen_registry ;
 int strcmp (char const*,char const*) ;

void
filegen_register(
 const char * dir,
 const char * name,
 FILEGEN * filegen
 )
{
 struct filegen_entry **ppfe;

 DPRINTF(4, ("filegen_register(%s, %p)\n", name, filegen));

 filegen_init(dir, name, filegen);

 ppfe = &filegen_registry;
 while (((void*)0) != *ppfe) {
  if ((*ppfe)->name == name
      || !strcmp((*ppfe)->name, name)) {

   DPRINTF(5, ("replacing filegen %p\n",
        (*ppfe)->filegen));

   (*ppfe)->filegen = filegen;
   return;
  }
  ppfe = &((*ppfe)->next);
 }

 *ppfe = emalloc(sizeof **ppfe);

 (*ppfe)->next = ((void*)0);
 (*ppfe)->name = estrdup(name);
 (*ppfe)->filegen = filegen;

 DPRINTF(6, ("adding new filegen\n"));

 return;
}
