
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wordent {char* word; struct wordent* next; } ;
struct TYPE_3__ {struct wordent* next; } ;
struct Hist {scalar_t__ Hnum; TYPE_1__ Hlex; struct Hist* Hnext; } ;
struct TYPE_4__ {struct Hist* Hnext; } ;
typedef char Char ;


 int ERR_NOEVENT ;
 TYPE_2__ Histlist ;
 int quesarg ;
 int seterror (int ,int ) ;
 int short2str (char*) ;

__attribute__((used)) static struct Hist *
findev(Char *cp, int anyarg)
{
    struct Hist *hp;

    for (hp = Histlist.Hnext; hp; hp = hp->Hnext) {
 Char *dp;
 Char *p, *q;
 struct wordent *lp = hp->Hlex.next;
 int argno = 0;







 if (hp->Hnum < 0)
     continue;
 if (lp->word[0] == '\n')
     continue;
 if (!anyarg) {
     p = cp;
     q = lp->word;
     do
  if (!*p)
      return (hp);
     while (*p++ == *q++);
     continue;
 }
 do {
     for (dp = lp->word; *dp; dp++) {
  p = cp;
  q = dp;
  do
      if (!*p) {
   quesarg = argno;
   return (hp);
      }
  while (*p++ == *q++);
     }
     lp = lp->next;
     argno++;
 } while (lp->word[0] != '\n');
    }
    seterror(ERR_NOEVENT, short2str(cp));
    return (0);
}
