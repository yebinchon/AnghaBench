
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mq_attr {int dummy; } ;
typedef TYPE_1__* mqd_t ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_kmq_setattr (int ,struct mq_attr const*,struct mq_attr*) ;

int
__mq_setattr(mqd_t mqd, const struct mq_attr *newattr, struct mq_attr *oldattr)
{

 return __sys_kmq_setattr(mqd->oshandle, newattr, oldattr);
}
