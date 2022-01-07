
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int txg_node_t ;
struct TYPE_3__ {char* tl_offset; int tl_spa; int ** tl_head; } ;
typedef TYPE_1__ txg_list_t ;


 int TXG_MASK ;
 int txg_verify (int ,int) ;

void *
txg_list_head(txg_list_t *tl, uint64_t txg)
{
 int t = txg & TXG_MASK;
 txg_node_t *tn = tl->tl_head[t];

 txg_verify(tl->tl_spa, txg);
 return (tn == ((void*)0) ? ((void*)0) : (char *)tn - tl->tl_offset);
}
