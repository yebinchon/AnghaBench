
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symtab {int free_code; TYPE_1__* objfile; struct symtab* debugformat; struct symtab* fullname; struct symtab* line_charpos; int (* free_func ) (struct symtab*) ;} ;
struct blockvector {int free_code; TYPE_1__* objfile; struct blockvector* debugformat; struct blockvector* fullname; struct blockvector* line_charpos; int (* free_func ) (struct symtab*) ;} ;
struct TYPE_2__ {int md; } ;


 struct symtab* BLOCKVECTOR (struct symtab*) ;
 int BLOCKVECTOR_BLOCK (struct symtab*,int) ;
 int BLOCKVECTOR_NBLOCKS (struct symtab*) ;
 struct symtab* LINETABLE (struct symtab*) ;



 int free_symtab_block (TYPE_1__*,int ) ;
 int stub1 (struct symtab*) ;
 int xmfree (int ,struct symtab*) ;

void
free_symtab (struct symtab *s)
{
  int i, n;
  struct blockvector *bv;

  switch (s->free_code)
    {
    case 128:



      break;

    case 130:



      bv = BLOCKVECTOR (s);
      n = BLOCKVECTOR_NBLOCKS (bv);
      for (i = 0; i < n; i++)
 free_symtab_block (s->objfile, BLOCKVECTOR_BLOCK (bv, i));

      xmfree (s->objfile->md, bv);


    case 129:



      if (LINETABLE (s))
 xmfree (s->objfile->md, LINETABLE (s));
      break;
    }


  if (s->free_func != ((void*)0))
    s->free_func (s);


  if (s->line_charpos != ((void*)0))
    xmfree (s->objfile->md, s->line_charpos);
  if (s->fullname != ((void*)0))
    xmfree (s->objfile->md, s->fullname);
  if (s->debugformat != ((void*)0))
    xmfree (s->objfile->md, s->debugformat);
  xmfree (s->objfile->md, s);
}
