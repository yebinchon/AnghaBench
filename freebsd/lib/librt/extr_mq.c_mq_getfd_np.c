
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mqd_t ;
struct TYPE_3__ {int oshandle; } ;



int
mq_getfd_np(mqd_t mqd)
{

 return (mqd->oshandle);
}
