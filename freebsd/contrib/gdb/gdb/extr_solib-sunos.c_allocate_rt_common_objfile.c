
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {struct objfile* next; int * md; int name; int objfile_obstack; void* macro_cache; void* psymbol_cache; } ;


 void* bcache_xmalloc () ;
 int memset (struct objfile*,int ,int) ;
 int mstrsave (int *,char*) ;
 struct objfile* object_files ;
 int obstack_init (int *) ;
 struct objfile* rt_common_objfile ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
allocate_rt_common_objfile (void)
{
  struct objfile *objfile;
  struct objfile *last_one;

  objfile = (struct objfile *) xmalloc (sizeof (struct objfile));
  memset (objfile, 0, sizeof (struct objfile));
  objfile->md = ((void*)0);
  objfile->psymbol_cache = bcache_xmalloc ();
  objfile->macro_cache = bcache_xmalloc ();
  obstack_init (&objfile->objfile_obstack);
  objfile->name = mstrsave (objfile->md, "rt_common");



  objfile->next = ((void*)0);
  if (object_files == ((void*)0))
    object_files = objfile;
  else
    {
      for (last_one = object_files;
    last_one->next;
    last_one = last_one->next);
      last_one->next = objfile;
    }

  rt_common_objfile = objfile;
}
