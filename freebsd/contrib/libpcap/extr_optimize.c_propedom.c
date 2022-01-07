
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct edge {int edom; TYPE_3__* succ; int id; } ;
struct TYPE_9__ {int edgewords; } ;
typedef TYPE_4__ opt_state_t ;
struct TYPE_7__ {int edom; } ;
struct TYPE_6__ {int edom; } ;
struct TYPE_8__ {TYPE_2__ ef; TYPE_1__ et; } ;


 int SET_INSERT (int ,int ) ;
 int SET_INTERSECT (int ,int ,int ) ;

__attribute__((used)) static void
propedom(opt_state_t *opt_state, struct edge *ep)
{
 SET_INSERT(ep->edom, ep->id);
 if (ep->succ) {
  SET_INTERSECT(ep->succ->et.edom, ep->edom, opt_state->edgewords);
  SET_INTERSECT(ep->succ->ef.edom, ep->edom, opt_state->edgewords);
 }
}
