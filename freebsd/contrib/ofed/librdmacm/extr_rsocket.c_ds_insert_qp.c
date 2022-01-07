
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsocket {struct ds_qp* qp_list; } ;
struct ds_qp {int list; } ;


 int dlist_init (int *) ;
 int dlist_insert_head (int *,int *) ;

__attribute__((used)) static void ds_insert_qp(struct rsocket *rs, struct ds_qp *qp)
{
 if (!rs->qp_list)
  dlist_init(&qp->list);
 else
  dlist_insert_head(&qp->list, &rs->qp_list->list);
 rs->qp_list = qp;
}
