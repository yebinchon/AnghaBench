
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _usem2 {int dummy; } ;


 int UMTX_OP_SEM2_WAKE ;
 int _umtx_op (struct _usem2*,int ,int ,int *,int *) ;

__attribute__((used)) static __inline int
usem_wake(struct _usem2 *sem)
{

 return (_umtx_op(sem, UMTX_OP_SEM2_WAKE, 0, ((void*)0), ((void*)0)));
}
