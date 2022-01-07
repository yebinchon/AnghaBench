
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partial_symtab {struct partial_symtab* next; struct objfile* objfile; int * symtab; int filename; } ;
struct objfile {struct partial_symtab* psymtabs; int objfile_obstack; struct partial_symtab* free_psymtabs; } ;


 int memset (struct partial_symtab*,int ,int) ;
 int obsavestring (char*,int ,int *) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int strlen (char*) ;

struct partial_symtab *
allocate_psymtab (char *filename, struct objfile *objfile)
{
  struct partial_symtab *psymtab;

  if (objfile->free_psymtabs)
    {
      psymtab = objfile->free_psymtabs;
      objfile->free_psymtabs = psymtab->next;
    }
  else
    psymtab = (struct partial_symtab *)
      obstack_alloc (&objfile->objfile_obstack,
       sizeof (struct partial_symtab));

  memset (psymtab, 0, sizeof (struct partial_symtab));
  psymtab->filename = obsavestring (filename, strlen (filename),
        &objfile->objfile_obstack);
  psymtab->symtab = ((void*)0);





  psymtab->objfile = objfile;
  psymtab->next = objfile->psymtabs;
  objfile->psymtabs = psymtab;
  return (psymtab);
}
