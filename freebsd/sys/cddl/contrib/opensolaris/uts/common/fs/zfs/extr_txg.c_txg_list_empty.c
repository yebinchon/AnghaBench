
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_3__ {int ** tl_head; int tl_spa; } ;
typedef TYPE_1__ txg_list_t ;
typedef int boolean_t ;


 size_t TXG_MASK ;
 int txg_verify (int ,size_t) ;

boolean_t
txg_list_empty(txg_list_t *tl, uint64_t txg)
{
 txg_verify(tl->tl_spa, txg);
 return (tl->tl_head[txg & TXG_MASK] == ((void*)0));
}
