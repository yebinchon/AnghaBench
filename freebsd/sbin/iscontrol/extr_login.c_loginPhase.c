
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int bhs; } ;
struct TYPE_13__ {TYPE_1__ ipdu; } ;
typedef TYPE_2__ pdu_t ;
struct TYPE_14__ {int cmd; int CSG; int NSG; int T; int CID; int tsih; int isid; } ;
typedef TYPE_3__ login_req_t ;
struct TYPE_15__ {int csg; int flags; int tsih; int isid; TYPE_5__* op; } ;
typedef TYPE_4__ isess_t ;
struct TYPE_16__ {char* sessionType; char* initiatorName; char* targetName; char* authMethod; char* maxBurstLength; char* headerDigest; char* dataDigest; char* maxRecvDataSegmentLength; char* errorRecoveryLevel; char* defaultTime2Wait; char* defaultTime2Retain; char* maxOutstandingR2T; char* maxConnections; char* firstBurstLength; int immediateData; int initialR2T; int dataSequenceInOrder; int dataPDUInOrder; } ;
typedef TYPE_5__ isc_opt_t ;


 int FF_PHASE ;
 int ISCSI_LOGIN_CMD ;

 int SESS_INITIALLOGIN1 ;
 int SESS_NEGODONE ;

 int addText (TYPE_2__*,char*,char*) ;
 int authenticate (TYPE_4__*) ;
 int bzero (TYPE_2__*,int) ;
 int debug_called (int) ;
 int handleLoginResp ;
 int htons (int) ;
 int memcpy (int ,int ,int) ;
 int sendPDU (TYPE_4__*,TYPE_2__*,int ) ;
 scalar_t__ strcmp (char*,char*) ;

int
loginPhase(isess_t *sess)
{
     pdu_t spp, *sp = &spp;
     isc_opt_t *op = sess->op;
     login_req_t *lp;
     int status = 1;

     debug_called(3);

     bzero(sp, sizeof(pdu_t));
     lp = (login_req_t *)&spp.ipdu.bhs;
     lp->cmd = ISCSI_LOGIN_CMD | 0x40;
     memcpy(lp->isid, sess->isid, 6);
     lp->tsih = sess->tsih;
     lp->CID = htons(1);

     if((lp->CSG = sess->csg) == 129)
   lp->NSG = FF_PHASE;
     else
   lp->NSG = 129;
     lp->T = 1;

     if(sess->flags & SESS_INITIALLOGIN1) {
   sess->flags &= ~SESS_INITIALLOGIN1;

   addText(sp, "SessionType=%s", op->sessionType);
   addText(sp, "InitiatorName=%s", op->initiatorName);
   if(strcmp(op->sessionType, "Discovery") != 0) {
        addText(sp, "TargetName=%s", op->targetName);
   }
     }
     switch(sess->csg) {
     case 128:
   addText(sp, "AuthMethod=%s", op->authMethod);
   break;

     case 129:
   if((sess->flags & SESS_NEGODONE) == 0) {
        sess->flags |= SESS_NEGODONE;
        addText(sp, "MaxBurstLength=%d", op->maxBurstLength);
        addText(sp, "HeaderDigest=%s", op->headerDigest);
        addText(sp, "DataDigest=%s", op->dataDigest);
        addText(sp, "MaxRecvDataSegmentLength=%d", op->maxRecvDataSegmentLength);
        addText(sp, "ErrorRecoveryLevel=%d", op->errorRecoveryLevel);
        addText(sp, "DefaultTime2Wait=%d", op->defaultTime2Wait);
        addText(sp, "DefaultTime2Retain=%d", op->defaultTime2Retain);
        addText(sp, "DataPDUInOrder=%s", op->dataPDUInOrder? "Yes": "No");
        addText(sp, "DataSequenceInOrder=%s", op->dataSequenceInOrder? "Yes": "No");
        addText(sp, "MaxOutstandingR2T=%d", op->maxOutstandingR2T);

        if(strcmp(op->sessionType, "Discovery") != 0) {
      addText(sp, "MaxConnections=%d", op->maxConnections);
      addText(sp, "FirstBurstLength=%d", op->firstBurstLength);
      addText(sp, "InitialR2T=%s", op->initialR2T? "Yes": "No");
      addText(sp, "ImmediateData=%s", op->immediateData? "Yes": "No");
        }
   }

   break;
     }

     status = sendPDU(sess, &spp, handleLoginResp);

     switch(status) {
     case 0:
   if(sess->csg == 128)




        status = authenticate(sess);
     }

     return status;
}
