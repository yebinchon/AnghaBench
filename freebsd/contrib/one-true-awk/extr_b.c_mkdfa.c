
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uschar ;
typedef int rrow ;
struct TYPE_7__ {int accept; int** posns; int anchor; int * restr; int initstat; TYPE_1__* re; } ;
typedef TYPE_2__ fa ;
struct TYPE_6__ {int* lfollow; } ;
typedef int Node ;


 int ALL ;
 int CAT ;
 int FINAL ;
 int * NIL ;
 int STAR ;
 int * basestr ;
 scalar_t__ calloc (int,int) ;
 int cfoll (TYPE_2__*,int *) ;
 int * firstbasestr ;
 int freetr (int *) ;
 int makeinit (TYPE_2__*,int) ;
 int * op2 (int ,int *,int *) ;
 int overflo (char*) ;
 int penter (int *) ;
 int poscnt ;
 int * reparse (char const*) ;
 scalar_t__ tostring (char const*) ;
 int xfree (int *) ;

fa *mkdfa(const char *s, int anchor)

{
 Node *p, *p1;
 fa *f;

 firstbasestr = (uschar *) s;
 basestr = firstbasestr;
 p = reparse(s);
 p1 = op2(CAT, op2(STAR, op2(ALL, NIL, NIL), NIL), p);

 p1 = op2(CAT, p1, op2(FINAL, NIL, NIL));


 poscnt = 0;
 penter(p1);
 if ((f = (fa *) calloc(1, sizeof(fa) + poscnt*sizeof(rrow))) == ((void*)0))
  overflo("out of space for fa");
 f->accept = poscnt-1;
 cfoll(f, p1);
 freetr(p1);
 if ((f->posns[0] = (int *) calloc(*(f->re[0].lfollow), sizeof(int))) == ((void*)0))
   overflo("out of space in makedfa");
 if ((f->posns[1] = (int *) calloc(1, sizeof(int))) == ((void*)0))
  overflo("out of space in makedfa");
 *f->posns[1] = 0;
 f->initstat = makeinit(f, anchor);
 f->anchor = anchor;
 f->restr = (uschar *) tostring(s);
 if (firstbasestr != basestr) {
  if (basestr)
   xfree(basestr);
 }
 return f;
}
