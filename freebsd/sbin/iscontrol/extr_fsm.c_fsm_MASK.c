#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int state_t ;
struct TYPE_12__ {int /*<<< orphan*/  pgt; int /*<<< orphan*/  port; int /*<<< orphan*/  address; } ;
struct TYPE_13__ {int fd; int soc; int flags; TYPE_1__ target; TYPE_3__* op; } ;
typedef  TYPE_2__ isess_t ;
struct TYPE_14__ {int /*<<< orphan*/  targetPortalGroupTag; int /*<<< orphan*/  port; int /*<<< orphan*/  targetAddress; } ;
typedef  TYPE_3__ isc_opt_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_INFO ; 
#define  S1 149 
#define  S2 148 
#define  S4 147 
#define  S5 146 
#define  S6 145 
#define  S7 144 
#define  S8 143 
 int SESS_INITIALLOGIN ; 
 int SESS_INITIALLOGIN1 ; 
#define  T1 142 
#define  T10 141 
#define  T11 140 
#define  T12 139 
#define  T13 138 
#define  T14 137 
#define  T15 136 
#define  T16 135 
#define  T18 134 
#define  T2 133 
#define  T4 132 
#define  T5 131 
#define  T7 130 
#define  T8 129 
#define  T9 128 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 

int
FUNC10(isc_opt_t *op)
{
     state_t	state;
     isess_t	*sess;

     if((sess = FUNC0(1, sizeof(isess_t))) == NULL) {
	  // boy, is this a bad start ...
	  FUNC2(stderr, "no memory!\n");
	  return -1;
     }

     state = S1;
     sess->op = op;
     sess->fd = -1;
     sess->soc = -1;
     sess->target.address = FUNC6(op->targetAddress);
     sess->target.port = op->port;
     sess->target.pgt = op->targetPortalGroupTag;

     sess->flags = SESS_INITIALLOGIN | SESS_INITIALLOGIN1;

     do {
	  switch(state) {

	  case S1:
	       switch(FUNC9(sess)) {
	       case T1: state = S2; break;
	       default: state = S8; break;
	       }
	       break;

	  case S2:
	       switch(FUNC5(sess)) {
	       case T2: state = S1; break;
	       case T4: state = S4; break;
	       default: state = S8; break;
	       }
	       break;

	  case S4:
	       switch(FUNC1(sess)) {
	       case T7:  state = S1; break;
	       case T5:  state = S5; break;
	       default: state = S8; break;
	       }
	       break;

	  case S5:
	       switch(FUNC7(sess)) {
	       case T8:  state = S1; break;
	       case T9:  state = S6; break;
	       case T11: state = S7; break;
	       case T15: state = S8; break;
	       default: state = S8; break;
	       }
	       break;

	  case S6:
	       switch(FUNC4(sess)) {
	       case T13: state = S1; break;
	       case T14: state = S6; break;
	       case T16: state = S8; break;
	       default: state = S8; break;
	       }
	       break;
	  
	  case S7: 
	       switch(FUNC3(sess)) {
	       case T18: state = S1; break;
	       case T10: state = S6; break;
	       case T12: state = S7; break;
	       case T16: state = S8; break;
	       default: state = S8; break;
	       }
	       break;

	  case S8:
	       // maybe do some clean up?
	       FUNC8(LOG_INFO, "terminated");
	       return 0;
	  }
     } while(1);
}