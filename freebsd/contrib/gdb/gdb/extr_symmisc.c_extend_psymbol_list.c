
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psymbol_allocation_list {int size; struct partial_symbol** list; struct partial_symbol** next; } ;
struct partial_symbol {int dummy; } ;
struct objfile {int md; } ;


 scalar_t__ xmmalloc (int ,int) ;
 scalar_t__ xmrealloc (int ,char*,int) ;

void
extend_psymbol_list (struct psymbol_allocation_list *listp,
       struct objfile *objfile)
{
  int new_size;
  if (listp->size == 0)
    {
      new_size = 255;
      listp->list = (struct partial_symbol **)
 xmmalloc (objfile->md, new_size * sizeof (struct partial_symbol *));
    }
  else
    {
      new_size = listp->size * 2;
      listp->list = (struct partial_symbol **)
 xmrealloc (objfile->md, (char *) listp->list,
     new_size * sizeof (struct partial_symbol *));
    }


  listp->next = listp->list + listp->size;
  listp->size = new_size;
}
