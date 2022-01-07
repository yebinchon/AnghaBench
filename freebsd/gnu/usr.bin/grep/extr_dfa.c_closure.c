
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tindex; } ;


 scalar_t__ CAT ;
 scalar_t__ PLUS ;
 scalar_t__ QMARK ;
 scalar_t__ REPMN ;
 scalar_t__ STAR ;
 int addtok (scalar_t__) ;
 int atom () ;
 int copytoks (int,int) ;
 TYPE_1__* dfa ;
 scalar_t__ lex () ;
 int maxrep ;
 int minrep ;
 int nsubtoks (int) ;
 scalar_t__ tok ;

__attribute__((used)) static void
closure (void)
{
  int tindex, ntokens, i;

  atom();
  while (tok == QMARK || tok == STAR || tok == PLUS || tok == REPMN)
    if (tok == REPMN)
      {
 ntokens = nsubtoks(dfa->tindex);
 tindex = dfa->tindex - ntokens;
 if (maxrep < 0)
   addtok(PLUS);
 if (minrep == 0)
   addtok(QMARK);
 for (i = 1; i < minrep; ++i)
   {
     copytoks(tindex, ntokens);
     addtok(CAT);
   }
 for (; i < maxrep; ++i)
   {
     copytoks(tindex, ntokens);
     addtok(QMARK);
     addtok(CAT);
   }
 tok = lex();
      }
    else
      {
 addtok(tok);
 tok = lex();
      }
}
