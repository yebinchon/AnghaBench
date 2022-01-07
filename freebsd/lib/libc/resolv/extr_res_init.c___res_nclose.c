
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* res_state ;
struct TYPE_5__ {int nscount; int* nssocks; } ;
struct TYPE_6__ {TYPE_1__ _ext; } ;
struct TYPE_7__ {int _vcsock; int _flags; TYPE_2__ _u; } ;


 int RES_F_CONN ;
 int RES_F_VC ;
 int _close (int) ;

void
res_nclose(res_state statp) {
 int ns;

 if (statp->_vcsock >= 0) {
  (void) _close(statp->_vcsock);
  statp->_vcsock = -1;
  statp->_flags &= ~(RES_F_VC | RES_F_CONN);
 }
 for (ns = 0; ns < statp->_u._ext.nscount; ns++) {
  if (statp->_u._ext.nssocks[ns] != -1) {
   (void) _close(statp->_u._ext.nssocks[ns]);
   statp->_u._ext.nssocks[ns] = -1;
  }
 }
}
