#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  bhs; } ;
struct TYPE_12__ {TYPE_1__ ipdu; } ;
typedef  TYPE_2__ pdu_t ;
struct TYPE_13__ {int cmd; scalar_t__ T; void* NSG; void* CSG; int /*<<< orphan*/  CID; int /*<<< orphan*/  tsih; int /*<<< orphan*/  isid; } ;
typedef  TYPE_3__ login_req_t ;
struct TYPE_14__ {int /*<<< orphan*/  tsih; int /*<<< orphan*/  isid; TYPE_5__* op; } ;
typedef  TYPE_4__ isess_t ;
struct TYPE_15__ {int /*<<< orphan*/  chapDigest; int /*<<< orphan*/  authMethod; } ;
typedef  TYPE_5__ isc_opt_t ;
typedef  int /*<<< orphan*/  authm_t ;

/* Variables and functions */
 int /*<<< orphan*/  AuthMethods ; 
#define  CHAP 133 
 int ISCSI_LOGIN_CMD ; 
#define  KRB5 132 
#define  NONE 131 
 void* SN_PHASE ; 
#define  SPKM1 130 
#define  SPKM2 129 
#define  SRP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  handleChap ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (TYPE_4__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(isess_t *sess)
{
     pdu_t		spp;
     login_req_t	*lp;
     isc_opt_t	*op = sess->op;

     FUNC1(&spp, sizeof(pdu_t));
     lp = (login_req_t *)&spp.ipdu.bhs;
     lp->cmd = ISCSI_LOGIN_CMD | 0x40; // login request + Inmediate
     FUNC4(lp->isid, sess->isid, 6);
     lp->tsih = sess->tsih;	// MUST be zero the first time!
     lp->CID = FUNC2(1);
     lp->CSG = SN_PHASE;	// Security Negotiation
     lp->NSG = SN_PHASE;
     lp->T = 0;

     switch((authm_t)FUNC3(AuthMethods, op->authMethod)) {
     case NONE:
	  return 0;

     case KRB5:
     case SPKM1:
     case SPKM2:
     case SRP:
	  return 2;

     case CHAP:
	  if(op->chapDigest == 0)
	       FUNC0(&spp, "CHAP_A=5");
	  else
	  if(FUNC6(op->chapDigest, "MD5") == 0)
	       FUNC0(&spp, "CHAP_A=5");
	  else
	  if(FUNC6(op->chapDigest, "SHA1") == 0)
	       FUNC0(&spp, "CHAP_A=7");
	  else
	       FUNC0(&spp, "CHAP_A=5,7");
	  return FUNC5(sess, &spp, handleChap);
     }
     return 1;
}