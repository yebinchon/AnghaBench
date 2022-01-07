
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mq_attr {int dummy; } ;
typedef TYPE_1__* mqd_t ;
struct TYPE_3__ {int oshandle; } ;


 int __sys_kmq_setattr (int ,int *,struct mq_attr*) ;

int
__mq_getattr(mqd_t mqd, struct mq_attr *attr)
{

 return __sys_kmq_setattr(mqd->oshandle, ((void*)0), attr);
}
