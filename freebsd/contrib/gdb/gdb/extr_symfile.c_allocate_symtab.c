
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtab {struct symtab* next; struct objfile* objfile; void* debugformat; int language; int * fullname; void* filename; } ;
struct objfile {struct symtab* symtabs; int objfile_obstack; } ;


 int INIT_EXTRA_SYMTAB_INFO (struct symtab*) ;
 int deduce_language_from_filename (char*) ;
 int memset (struct symtab*,int ,int) ;
 void* obsavestring (char*,int,int *) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strlen (char*) ;

struct symtab *
allocate_symtab (char *filename, struct objfile *objfile)
{
  struct symtab *symtab;

  symtab = (struct symtab *)
    obstack_alloc (&objfile->objfile_obstack, sizeof (struct symtab));
  memset (symtab, 0, sizeof (*symtab));
  symtab->filename = obsavestring (filename, strlen (filename),
       &objfile->objfile_obstack);
  symtab->fullname = ((void*)0);
  symtab->language = deduce_language_from_filename (filename);
  symtab->debugformat = obsavestring ("unknown", 7,
          &objfile->objfile_obstack);



  symtab->objfile = objfile;
  symtab->next = objfile->symtabs;
  objfile->symtabs = symtab;
  return (symtab);
}
