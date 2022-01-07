
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct wordent {int* word; struct wordent const* next; } const wordent ;
struct command {int t_dflg; int t_dtyp; int t_dspr; void* t_dlef; void* t_drit; int ** t_dcom; } ;
typedef int Char ;


 int ERR_BADPLP ;
 int ERR_BADPLPS ;
 int ERR_INRED ;
 int ERR_MISRED ;
 int ERR_NULLCOM ;
 int ERR_OUTRED ;
 int ERR_REDPAR ;
 int F_APPEND ;
 int F_NOFORK ;
 int F_OVERWRITE ;
 int F_READ ;
 int F_STDERR ;
 int NODE_COMMAND ;
 int NODE_PAREN ;
 int P_DIAG ;
 int P_HERE ;
 int P_IN ;
 int P_OUT ;
 int RELPAR ;
 int STRand ;
 int STRbang ;
 void* Strsave (char*) ;
 int any (int ,char) ;
 int eq (char*,int ) ;
 int seterr ;
 int seterror (int ) ;
 int srchx (int*) ;
 int syn0 (struct wordent const*,struct wordent const*,int) ;
 void* xcalloc (int,int) ;

__attribute__((used)) static struct command *
syn3(const struct wordent *p1, const struct wordent *p2, int flags)
{
    const struct wordent *p;
    const struct wordent *lp, *rp;
    struct command *t;
    int l;
    Char **av;
    int n, c;
    int specp = 0;

    if (p1 != p2) {
 p = p1;
again:
 switch (srchx(p->word)) {

 case 135:
     p = p->next;
     if (p != p2)
  goto again;
     break;

 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
     specp = 1;
     break;
 default:
     break;
 }
    }
    n = 0;
    l = 0;
    for (p = p1; p != p2; p = p->next)
 switch (p->word[0]) {

 case '(':
     if (specp)
  n++;
     l++;
     continue;

 case ')':
     if (specp)
  n++;
     l--;
     continue;

 case '>':
 case '<':
     if (l != 0) {
  if (specp)
      n++;
  continue;
     }
     if (p->next == p2)
  continue;
     if (any(RELPAR, p->next->word[0]))
  continue;
     n--;
     continue;

 default:
     if (!specp && l != 0)
  continue;
     n++;
     continue;
 }
    if (n < 0)
 n = 0;
    t = xcalloc(1, sizeof(*t));
    av = xcalloc(n + 1, sizeof(Char **));
    t->t_dcom = av;
    n = 0;
    if (p2->word[0] == ')')
 t->t_dflg = F_NOFORK;
    lp = 0;
    rp = 0;
    l = 0;
    for (p = p1; p != p2; p = p->next) {
 c = p->word[0];
 switch (c) {

 case '(':
     if (l == 0) {
  if (lp != 0 && !specp)
      seterror(ERR_BADPLP);
  lp = p->next;
     }
     l++;
     goto savep;

 case ')':
     l--;
     if (l == 0)
  rp = p;
     goto savep;

 case '>':
     if (l != 0)
  goto savep;
     if (p->word[1] == '>')
  t->t_dflg |= F_APPEND;
     if (p->next != p2 && eq(p->next->word, STRand)) {
  t->t_dflg |= F_STDERR, p = p->next;
  if (flags & (P_OUT | P_DIAG)) {
      seterror(ERR_OUTRED);
      continue;
  }
     }
     if (p->next != p2 && eq(p->next->word, STRbang))
  t->t_dflg |= F_OVERWRITE, p = p->next;
     if (p->next == p2) {
  seterror(ERR_MISRED);
  continue;
     }
     p = p->next;
     if (any(RELPAR, p->word[0])) {
  seterror(ERR_MISRED);
  continue;
     }
     if (((flags & P_OUT) && (flags & P_DIAG) == 0) || t->t_drit)
  seterror(ERR_OUTRED);
     else
  t->t_drit = Strsave(p->word);
     continue;

 case '<':
     if (l != 0)
  goto savep;
     if (p->word[1] == '<')
  t->t_dflg |= F_READ;
     if (p->next == p2) {
  seterror(ERR_MISRED);
  continue;
     }
     p = p->next;
     if (any(RELPAR, p->word[0])) {
  seterror(ERR_MISRED);
  continue;
     }
     if ((flags & P_HERE) && (t->t_dflg & F_READ))
  seterror(ERR_REDPAR);
     else if ((flags & P_IN) || t->t_dlef)
  seterror(ERR_INRED);
     else
  t->t_dlef = Strsave(p->word);
     continue;

    savep:
     if (!specp)
  continue;
 default:
     if (l != 0 && !specp)
  continue;
     if (seterr == 0)
  av[n] = Strsave(p->word);
     n++;
     continue;
 }
    }
    if (lp != 0 && !specp) {
 if (n != 0)
     seterror(ERR_BADPLPS);
 t->t_dtyp = NODE_PAREN;
 t->t_dspr = syn0(lp, rp, P_HERE);
    }
    else {
 if (n == 0)
     seterror(ERR_NULLCOM);
 t->t_dtyp = NODE_COMMAND;
    }
    return (t);
}
