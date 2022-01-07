
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urwlock {int dummy; } ;


 int UMTX_OP_RW_UNLOCK ;
 int _umtx_op_err (struct urwlock*,int ,int ,int *,int *) ;

int
__thr_rwlock_unlock(struct urwlock *rwlock)
{

 return (_umtx_op_err(rwlock, UMTX_OP_RW_UNLOCK, 0, ((void*)0), ((void*)0)));
}
