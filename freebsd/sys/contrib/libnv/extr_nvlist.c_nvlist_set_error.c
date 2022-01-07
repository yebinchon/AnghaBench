
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nvl_error; } ;
typedef TYPE_1__ nvlist_t ;


 int PJDLOG_ASSERT (int) ;

void
nvlist_set_error(nvlist_t *nvl, int error)
{

 PJDLOG_ASSERT(error != 0);





 if (nvl != ((void*)0) && error != 0 && nvl->nvl_error == 0)
  nvl->nvl_error = error;
}
