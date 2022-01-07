
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tag_last; int tagfq; int tq; } ;
typedef int TAGQ ;
typedef int TAGF ;
typedef int SCR ;
typedef TYPE_1__ EX_PRIVATE ;


 TYPE_1__* EXP (int *) ;
 void* TAILQ_FIRST (int ) ;
 int free (int *) ;
 int tagf_free (int *,int *) ;
 int tagq_free (int *,int *) ;

int
ex_tag_free(SCR *sp)
{
 EX_PRIVATE *exp;
 TAGF *tfp;
 TAGQ *tqp;


 exp = EXP(sp);
 while ((tqp = TAILQ_FIRST(exp->tq)) != ((void*)0))
  tagq_free(sp, tqp);
 while ((tfp = TAILQ_FIRST(exp->tagfq)) != ((void*)0))
  tagf_free(sp, tfp);
 if (exp->tag_last != ((void*)0))
  free(exp->tag_last);
 return (0);
}
