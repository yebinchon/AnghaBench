
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int F; int ttt; int cmd; } ;
typedef TYPE_2__ text_req_t ;
struct TYPE_7__ {int bhs; } ;
struct TYPE_9__ {TYPE_1__ ipdu; } ;
typedef TYPE_3__ pdu_t ;
typedef int isess_t ;


 int ISCSI_TEXT_CMD ;
 int addText (TYPE_3__*,char*) ;
 int bzero (TYPE_3__*,int) ;
 int debug_called (int) ;
 int handledDiscoveryResp ;
 int sendPDU (int *,TYPE_3__*,int ) ;

__attribute__((used)) static int
doDiscovery(isess_t *sess)
{
     pdu_t spp;
     text_req_t *tp = (text_req_t *)&spp.ipdu.bhs;

     debug_called(3);

     bzero(&spp, sizeof(pdu_t));
     tp->cmd = ISCSI_TEXT_CMD ;
     tp->F = 1;
     tp->ttt = 0xffffffff;
     addText(&spp, "SendTargets=All");
     return sendPDU(sess, &spp, handledDiscoveryResp);
}
