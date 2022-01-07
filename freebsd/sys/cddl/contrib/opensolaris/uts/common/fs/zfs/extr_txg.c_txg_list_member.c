
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {scalar_t__* tn_member; } ;
typedef TYPE_1__ txg_node_t ;
struct TYPE_5__ {int tl_offset; int tl_spa; } ;
typedef TYPE_2__ txg_list_t ;
typedef int boolean_t ;


 int TXG_MASK ;
 int txg_verify (int ,int) ;

boolean_t
txg_list_member(txg_list_t *tl, void *p, uint64_t txg)
{
 int t = txg & TXG_MASK;
 txg_node_t *tn = (txg_node_t *)((char *)p + tl->tl_offset);

 txg_verify(tl->tl_spa, txg);
 return (tn->tn_member[t] != 0);
}
