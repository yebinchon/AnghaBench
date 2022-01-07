
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_mapper {TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* mo_init_state ) () ;} ;


 int stub1 () ;

__attribute__((used)) static __inline void
_citrus_mapper_init_state(struct _citrus_mapper * __restrict cm)
{

 (*cm->cm_ops->mo_init_state)();
}
