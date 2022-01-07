
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
struct TYPE_8__ {int options; int * _rnd; TYPE_2__ _u; } ;


 int RES_INIT ;
 int free (int *) ;
 int res_nclose (TYPE_3__*) ;

void
res_ndestroy(res_state statp) {
 res_nclose(statp);
 if (statp->_u._ext.ext != ((void*)0)) {
  free(statp->_u._ext.ext);
  statp->_u._ext.ext = ((void*)0);
 }
 if (statp->_rnd != ((void*)0)) {
  free(statp->_rnd);
  statp->_rnd = ((void*)0);
 }
 statp->options &= ~RES_INIT;
}
