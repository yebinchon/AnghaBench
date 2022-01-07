
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int dtrace_probedesc_t ;
typedef int dtrace_predicate_t ;
typedef int dtrace_enabling_t ;
struct TYPE_8__ {int * dtpdd_predicate; } ;
struct TYPE_9__ {int dted_uarg; int dted_probe; TYPE_1__ dted_pred; TYPE_3__* dted_action; } ;
typedef TYPE_2__ dtrace_ecbdesc_t ;
struct TYPE_10__ {struct TYPE_10__* dtad_next; } ;
typedef TYPE_3__ dtrace_actdesc_t ;


 int KM_SLEEP ;
 int dtrace_actdesc_hold (TYPE_3__*) ;
 int dtrace_enabling_add (int *,TYPE_2__*) ;
 int dtrace_predicate_hold (int *) ;
 TYPE_2__* kmem_zalloc (int,int ) ;

__attribute__((used)) static void
dtrace_enabling_addlike(dtrace_enabling_t *enab, dtrace_ecbdesc_t *ecb,
    dtrace_probedesc_t *pd)
{
 dtrace_ecbdesc_t *new;
 dtrace_predicate_t *pred;
 dtrace_actdesc_t *act;





 new = kmem_zalloc(sizeof (dtrace_ecbdesc_t), KM_SLEEP);

 if ((pred = ecb->dted_pred.dtpdd_predicate) != ((void*)0))
  dtrace_predicate_hold(pred);

 for (act = ecb->dted_action; act != ((void*)0); act = act->dtad_next)
  dtrace_actdesc_hold(act);

 new->dted_action = ecb->dted_action;
 new->dted_pred = ecb->dted_pred;
 new->dted_probe = *pd;
 new->dted_uarg = ecb->dted_uarg;

 dtrace_enabling_add(enab, new);
}
