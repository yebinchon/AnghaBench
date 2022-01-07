
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rsocket {int * qp_list; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;
struct ds_qp {TYPE_1__ list; } ;


 int dlist_remove (TYPE_1__*) ;
 int * ds_next_qp (struct ds_qp*) ;

__attribute__((used)) static void ds_remove_qp(struct rsocket *rs, struct ds_qp *qp)
{
 if (qp->list.next != &qp->list) {
  rs->qp_list = ds_next_qp(qp);
  dlist_remove(&qp->list);
 } else {
  rs->qp_list = ((void*)0);
 }
}
