
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct umutex {int dummy; } ;


 int UMTX_OP_SET_CEILING ;
 int _umtx_op_err (struct umutex*,int ,int ,int *,int ) ;

int
__thr_umutex_set_ceiling(struct umutex *mtx, uint32_t ceiling,
    uint32_t *oldceiling)
{

 return (_umtx_op_err(mtx, UMTX_OP_SET_CEILING, ceiling, oldceiling, 0));
}
