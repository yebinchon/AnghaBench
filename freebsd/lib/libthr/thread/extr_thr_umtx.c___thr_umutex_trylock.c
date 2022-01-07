
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umutex {int dummy; } ;


 int UMTX_OP_MUTEX_TRYLOCK ;
 int _umtx_op_err (struct umutex*,int ,int ,int ,int ) ;

int
__thr_umutex_trylock(struct umutex *mtx)
{

 return (_umtx_op_err(mtx, UMTX_OP_MUTEX_TRYLOCK, 0, 0, 0));
}
