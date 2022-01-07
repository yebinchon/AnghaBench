
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int l_dbuf; int l_rwlock; } ;
typedef TYPE_1__ zap_leaf_t ;


 int dmu_buf_rele (int ,int *) ;
 int rw_exit (int *) ;

void
zap_put_leaf(zap_leaf_t *l)
{
 rw_exit(&l->l_rwlock);
 dmu_buf_rele(l->l_dbuf, ((void*)0));
}
