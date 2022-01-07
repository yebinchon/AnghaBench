
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uch ;
struct parse {int ncsalloc; TYPE_1__* g; } ;
struct TYPE_5__ {int mask; int * multis; scalar_t__ smultis; scalar_t__ hash; int * ptr; } ;
typedef TYPE_2__ cset ;
struct TYPE_4__ {int * setbits; TYPE_2__* sets; int csetsize; int ncsets; } ;


 size_t CHAR_BIT ;
 scalar_t__ MEMLIMIT ;
 scalar_t__ MEMSIZE (struct parse*) ;
 int REG_ESPACE ;
 int SETERROR (int ) ;
 int assert (int) ;
 scalar_t__ malloc (size_t) ;
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
  p->ncsalloc += CHAR_BIT;
  nc = p->ncsalloc;
  assert(nc % CHAR_BIT == 0);
  nbytes = nc / CHAR_BIT * css;
  if (MEMSIZE(p) > MEMLIMIT)
   goto oomem;
  if (p->g->sets == ((void*)0))
   p->g->sets = (cset *)malloc(nc * sizeof(cset));
  else
   p->g->sets = (cset *)realloc((char *)p->g->sets,
       nc * sizeof(cset));
  if (p->g->setbits == ((void*)0))
   p->g->setbits = (uch *)malloc(nbytes);
  else {
   p->g->setbits = (uch *)realloc((char *)p->g->setbits,
        nbytes);

   for (i = 0; i < no; i++)
    p->g->sets[i].ptr = p->g->setbits + css*(i/CHAR_BIT);
  }
  if (p->g->sets != ((void*)0) && p->g->setbits != ((void*)0))
   memset((char *)p->g->setbits + (nbytes - css),
        0, css);
  else {
oomem:
   no = 0;
   SETERROR(REG_ESPACE);

   return ((void*)0);
  }
 }

 cs = &p->g->sets[no];
 cs->ptr = p->g->setbits + css*((no)/CHAR_BIT);
 cs->mask = 1 << ((no) % CHAR_BIT);
 cs->hash = 0;
 cs->smultis = 0;
 cs->multis = ((void*)0);

 return(cs);
}
