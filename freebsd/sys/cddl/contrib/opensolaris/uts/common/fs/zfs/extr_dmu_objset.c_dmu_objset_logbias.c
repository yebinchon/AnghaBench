
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_logbias_op_t ;
struct TYPE_3__ {int os_logbias; } ;
typedef TYPE_1__ objset_t ;



zfs_logbias_op_t
dmu_objset_logbias(objset_t *os)
{
 return (os->os_logbias);
}
