
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ sa_master_obj; } ;
typedef TYPE_1__ sa_os_t ;
struct TYPE_5__ {TYPE_1__* os_sa; } ;
typedef TYPE_2__ objset_t ;



int
sa_set_sa_object(objset_t *os, uint64_t sa_object)
{
 sa_os_t *sa = os->os_sa;

 if (sa->sa_master_obj)
  return (1);

 sa->sa_master_obj = sa_object;

 return (0);
}
