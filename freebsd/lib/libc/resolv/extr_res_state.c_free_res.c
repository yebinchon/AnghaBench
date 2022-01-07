
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* res_state ;
struct TYPE_6__ {int * ext; } ;
struct TYPE_7__ {TYPE_1__ _ext; } ;
struct TYPE_8__ {TYPE_2__ _u; } ;


 int free (TYPE_3__*) ;
 int res_ndestroy (TYPE_3__*) ;

__attribute__((used)) static void
free_res(void *ptr)
{
 res_state statp = ptr;

 if (statp->_u._ext.ext != ((void*)0))
  res_ndestroy(statp);
 free(statp);
}
