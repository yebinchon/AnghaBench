#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  fd; TYPE_1__* op; } ;
typedef  TYPE_2__ isess_t ;
struct TYPE_9__ {scalar_t__ targetName; int /*<<< orphan*/ * dataDigest; int /*<<< orphan*/ * headerDigest; int /*<<< orphan*/  maxluns; int /*<<< orphan*/  maxBurstLength; int /*<<< orphan*/  maxXmitDataSegmentLength; int /*<<< orphan*/  maxRecvDataSegmentLength; int /*<<< orphan*/  targetAddress; int /*<<< orphan*/  initiatorName; } ;
typedef  TYPE_3__ isc_opt_t ;
struct TYPE_7__ {scalar_t__ targetName; int /*<<< orphan*/ * dataDigest; int /*<<< orphan*/ * headerDigest; int /*<<< orphan*/  maxluns; int /*<<< orphan*/  maxBurstLength; int /*<<< orphan*/  maxXmitDataSegmentLength; int /*<<< orphan*/  maxRecvDataSegmentLength; int /*<<< orphan*/  targetAddress; int /*<<< orphan*/  initiatorName; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSISETOPT ; 
 int SESS_FULLFEATURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char) ; 

int
FUNC6(isess_t *sess, int flag)
{
     isc_opt_t	oop;
     char	*sep;

     FUNC2(3);

     FUNC0(&oop, sizeof(isc_opt_t));

     if((flag & SESS_FULLFEATURE) == 0) {
	  oop.initiatorName	= sess->op->initiatorName;
	  oop.targetAddress	= sess->op->targetAddress;
	  if(sess->op->targetName != 0)
	       oop.targetName = sess->op->targetName;
	  
	  oop.maxRecvDataSegmentLength = sess->op->maxRecvDataSegmentLength;
	  oop.maxXmitDataSegmentLength = sess->op->maxXmitDataSegmentLength; // XXX:
	  oop.maxBurstLength = sess->op->maxBurstLength;
	  oop.maxluns = sess->op->maxluns;
     }
     else {
	  /*
	   | turn on digestion only after login
	   */
	  if(sess->op->headerDigest != NULL) {
	       sep = FUNC5(sess->op->headerDigest, ',');
	       if(sep == NULL)
		    oop.headerDigest = sess->op->headerDigest;
	       FUNC1(1, "oop.headerDigest=%s", oop.headerDigest);
	  }
	  if(sess->op->dataDigest != NULL) {
	       sep = FUNC5(sess->op->dataDigest, ',');
	       if(sep == NULL)
		    oop.dataDigest = sess->op->dataDigest;
	       FUNC1(1, "oop.dataDigest=%s", oop.dataDigest);
	  }
     }

     if(FUNC3(sess->fd, ISCSISETOPT, &oop)) {
	  FUNC4("ISCSISETOPT");
	  return -1;
     }
     return 0;
}