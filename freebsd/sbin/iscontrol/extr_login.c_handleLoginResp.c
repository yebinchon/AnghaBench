
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint ;
typedef int pdu_t ;
struct TYPE_8__ {int tsih; int NSG; scalar_t__ T; int CSG; int status; } ;
typedef TYPE_1__ login_rsp_t ;
struct TYPE_9__ {int tsih; int csg; TYPE_3__* op; } ;
typedef TYPE_2__ isess_t ;
struct TYPE_10__ {int * tgtChapDigest; } ;
typedef TYPE_3__ isc_opt_t ;


 int CLASS1_ERRS ;
 int CLASS3_ERRS ;
 int FF_PHASE ;
 int SN_PHASE ;
 int debug (int,char*,int ,...) ;
 int debug_called (int) ;
 scalar_t__ handleTgtResp (TYPE_2__*,int *) ;
 int ntohs (int ) ;
 int printf (char*,int,char*) ;
 int processParams (TYPE_2__*,int *) ;
 int setOptions (TYPE_2__*,int ) ;
 char** status_class1 ;
 char** status_class3 ;

__attribute__((used)) static int
handleLoginResp(isess_t *sess, pdu_t *pp)
{
     login_rsp_t *lp = (login_rsp_t *)pp;
     uint st_class, status = ntohs(lp->status);

     debug_called(3);
     debug(4, "Tbit=%d csg=%d nsg=%d status=%x", lp->T, lp->CSG, lp->NSG, status);

     st_class = status >> 8;
     if(status) {
   uint st_detail = status & 0xff;

   switch(st_class) {
   case 1:
        switch(st_detail) {

        case 1:
        case 2:
      status = 0;
        }
        break;

   case 2:
        if(st_detail < CLASS1_ERRS)
      printf("0x%04x: %s\n", status, status_class1[st_detail]);
        break;

   case 3:
        if(st_detail < CLASS3_ERRS)
      printf("0x%04x: %s\n", status, status_class3[st_detail]);
        break;
   }
     }

     if(status == 0) {
   processParams(sess, pp);
   setOptions(sess, 0);

   if(lp->T) {
        isc_opt_t *op = sess->op;

        if(sess->csg == SN_PHASE && (op->tgtChapDigest != ((void*)0)))
      if(handleTgtResp(sess, pp) != 0)
    return 1;
        sess->csg = lp->NSG;
        if(sess->csg == FF_PHASE) {

      sess->tsih = lp->tsih;
      debug(2, "TSIH=%x", sess->tsih);
        }
   }
     }

     return st_class;
}
