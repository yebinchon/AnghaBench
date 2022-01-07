
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int trans_t ;
struct TYPE_6__ {int bhs; } ;
struct TYPE_7__ {TYPE_1__ ipdu; } ;
typedef TYPE_2__ pdu_t ;
struct TYPE_8__ {int cmd; int reason; int CID; } ;
typedef TYPE_3__ logout_req_t ;
typedef int isess_t ;


 int BIT (int) ;
 int ISCSI_LOGOUT_CMD ;
 int bzero (TYPE_2__*,int) ;
 int handleLogoutResp ;
 int htons (int) ;
 int sendPDU (int *,TYPE_2__*,int ) ;

__attribute__((used)) static trans_t
startLogout(isess_t *sess)
{
     pdu_t spp;
     logout_req_t *p = (logout_req_t *)&spp.ipdu.bhs;

     bzero(&spp, sizeof(pdu_t));
     p->cmd = ISCSI_LOGOUT_CMD| 0x40;
     p->reason = BIT(7) | 0;
     p->CID = htons(1);

     return sendPDU(sess, &spp, handleLogoutResp);
}
