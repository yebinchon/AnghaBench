
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uch ;
struct parse {int ncsalloc; TYPE_1__* g; } ;
struct TYPE_6__ {int mask; int * multis; scalar_t__ smultis; scalar_t__ hash; struct TYPE_6__* ptr; } ;
typedef TYPE_2__ cset ;
struct TYPE_5__ {TYPE_2__* setbits; TYPE_2__* sets; int csetsize; int ncsets; } ;


 size_t CHAR_BIT ;
 int REG_ESPACE ;
 int SETERROR (int ) ;
 int SIZE_MAX ;
 int assert (int) ;
 int free (TYPE_2__*) ;
 int memset (char*,int ,size_t) ;
 scalar_t__ realloc (char*,size_t) ;

__attribute__((used)) static cset *
allocset(struct parse *p)
{
 int no = p->g->ncsets++;
 size_t nc;
 size_t nbytes;
 cset *cs;
 size_t css = (size_t)p->g->csetsize;
 int i;

 if (no >= p->ncsalloc) {
  void *ptr;

  p->ncsalloc += CHAR_BIT;
  nc = p->ncsalloc;
  if (nc > SIZE_MAX / sizeof(cset))
   goto nomem;
  assert(nc % CHAR_BIT == 0);
  nbytes = nc / CHAR_BIT * css;

  ptr = (cset *)realloc((char *)p->g->sets, nc * sizeof(cset));
  if (ptr == ((void*)0))
   goto nomem;
  p->g->sets = ptr;

  ptr = (uch *)realloc((char *)p->g->setbits, nbytes);
  if (ptr == ((void*)0))
   goto nomem;
  p->g->setbits = ptr;

  for (i = 0; i < no; i++)
   p->g->sets[i].ptr = p->g->setbits + css*(i/CHAR_BIT);

  (void) memset((char *)p->g->setbits + (nbytes - css), 0, css);
 }

 if (p->g->sets == ((void*)0) || p->g->setbits == ((void*)0))
  goto nomem;

 cs = &p->g->sets[no];
 cs->ptr = p->g->setbits + css*((no)/CHAR_BIT);
 cs->mask = 1 << ((no) % CHAR_BIT);
 cs->hash = 0;
 cs->smultis = 0;
 cs->multis = ((void*)0);

 return(cs);
nomem:
 free(p->g->sets);
 p->g->sets = ((void*)0);
 free(p->g->setbits);
 p->g->setbits = ((void*)0);

 SETERROR(REG_ESPACE);

 return(((void*)0));
}
