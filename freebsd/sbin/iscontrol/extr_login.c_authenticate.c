
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int bhs; } ;
struct TYPE_12__ {TYPE_1__ ipdu; } ;
typedef TYPE_2__ pdu_t ;
struct TYPE_13__ {int cmd; scalar_t__ T; void* NSG; void* CSG; int CID; int tsih; int isid; } ;
typedef TYPE_3__ login_req_t ;
struct TYPE_14__ {int tsih; int isid; TYPE_5__* op; } ;
typedef TYPE_4__ isess_t ;
struct TYPE_15__ {int chapDigest; int authMethod; } ;
typedef TYPE_5__ isc_opt_t ;
typedef int authm_t ;


 int AuthMethods ;

 int ISCSI_LOGIN_CMD ;


 void* SN_PHASE ;



 int addText (TYPE_2__*,char*) ;
 int bzero (TYPE_2__*,int) ;
 int handleChap ;
 int htons (int) ;
 int lookup (int ,int ) ;
 int memcpy (int ,int ,int) ;
 int sendPDU (TYPE_4__*,TYPE_2__*,int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int
authenticate(isess_t *sess)
{
     pdu_t spp;
     login_req_t *lp;
     isc_opt_t *op = sess->op;

     bzero(&spp, sizeof(pdu_t));
     lp = (login_req_t *)&spp.ipdu.bhs;
     lp->cmd = ISCSI_LOGIN_CMD | 0x40;
     memcpy(lp->isid, sess->isid, 6);
     lp->tsih = sess->tsih;
     lp->CID = htons(1);
     lp->CSG = SN_PHASE;
     lp->NSG = SN_PHASE;
     lp->T = 0;

     switch((authm_t)lookup(AuthMethods, op->authMethod)) {
     case 131:
   return 0;

     case 132:
     case 130:
     case 129:
     case 128:
   return 2;

     case 133:
   if(op->chapDigest == 0)
        addText(&spp, "CHAP_A=5");
   else
   if(strcmp(op->chapDigest, "MD5") == 0)
        addText(&spp, "CHAP_A=5");
   else
   if(strcmp(op->chapDigest, "SHA1") == 0)
        addText(&spp, "CHAP_A=7");
   else
        addText(&spp, "CHAP_A=5,7");
   return sendPDU(sess, &spp, handleChap);
     }
     return 1;
}
