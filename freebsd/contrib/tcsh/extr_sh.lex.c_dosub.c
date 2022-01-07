
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* prev; int * word; struct wordent* next; } ;
struct Hist {struct wordent Hlex; } ;
typedef int Char ;


 int ERR_MODFAIL ;
 int FLAG_A ;
 int FLAG_G ;
 int HIST_PURGE ;
 int * STRNULL ;
 scalar_t__ Strcmp (int *,int *) ;
 int * Strsave (int *) ;
 struct Hist* enthist (int ,struct wordent*,int ,int ,int) ;
 int exclc ;
 int seterror (int ) ;
 int * subword (int *,int ,int*,size_t*) ;
 struct wordent* xcalloc (int,int) ;
 int xfree (int *) ;

__attribute__((used)) static struct wordent *
dosub(Char sc, struct wordent *en, int global)
{
    struct wordent lexi;
    int didsub = 0, didone = 0;
    struct wordent *hp = &lexi;
    struct wordent *wdp;
    int i = exclc;
    struct Hist *hst;

    wdp = hp;
    while (--i >= 0) {
 struct wordent *new = xcalloc(1, sizeof *wdp);

 new->word = 0;
 new->prev = wdp;
 new->next = hp;
 wdp->next = new;
 wdp = new;
 en = en->next;
 if (en->word) {
     Char *tword, *otword;

     if ((global & FLAG_G) || didsub == 0) {
  size_t pos;

  pos = 0;
  tword = subword(en->word, sc, &didone, &pos);
  if (didone)
      didsub = 1;
  if (global & FLAG_A) {
      while (didone && tword != STRNULL) {
   otword = tword;
   tword = subword(otword, sc, &didone, &pos);
   if (Strcmp(tword, otword) == 0) {
       xfree(otword);
       break;
   }
   else
       xfree(otword);
      }
  }
     }
     else
  tword = Strsave(en->word);
     wdp->word = tword;
 }
    }
    if (didsub == 0)
 seterror(ERR_MODFAIL);
    hp->prev = wdp;




    hst = enthist(HIST_PURGE, &lexi, 0, 0, -1);
    return &(hst->Hlex);
}
