
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int tagfq; } ;
struct TYPE_7__ {struct TYPE_7__* name; } ;
typedef TYPE_1__ TAGF ;
typedef int SCR ;
typedef TYPE_2__ EX_PRIVATE ;


 TYPE_2__* EXP (int *) ;
 int TAILQ_REMOVE (int ,TYPE_1__*,int ) ;
 int free (TYPE_1__*) ;
 int q ;

__attribute__((used)) static int
tagf_free(SCR *sp, TAGF *tfp)
{
 EX_PRIVATE *exp;

 exp = EXP(sp);
 TAILQ_REMOVE(exp->tagfq, tfp, q);
 free(tfp->name);
 free(tfp);
 return (0);
}
