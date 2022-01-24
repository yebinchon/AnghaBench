#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  isc_opt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  authMethod ; 
 int /*<<< orphan*/  chapDigest ; 
 int /*<<< orphan*/  chapIName ; 
 int /*<<< orphan*/  chapSecret ; 
 int /*<<< orphan*/  dataDigest ; 
 int /*<<< orphan*/  dataPDUInOrder ; 
 int /*<<< orphan*/  dataSequenceInOrder ; 
 int /*<<< orphan*/  defaultTime2Retain ; 
 int /*<<< orphan*/  defaultTime2Wait ; 
 int /*<<< orphan*/  errorRecoveryLevel ; 
 int /*<<< orphan*/  firstBurstLength ; 
 int /*<<< orphan*/  headerDigest ; 
 int /*<<< orphan*/  immediateData ; 
 int /*<<< orphan*/  initialR2T ; 
 int /*<<< orphan*/  initiatorAlias ; 
 int /*<<< orphan*/  initiatorName ; 
 int /*<<< orphan*/  iqn ; 
 int /*<<< orphan*/  maxBurstLength ; 
 int /*<<< orphan*/  maxConnections ; 
 int /*<<< orphan*/  maxOutstandingR2T ; 
 int /*<<< orphan*/  maxRecvDataSegmentLength ; 
 int /*<<< orphan*/  maxXmitDataSegmentLength ; 
 int /*<<< orphan*/  maxluns ; 
 int /*<<< orphan*/  port ; 
 int /*<<< orphan*/  sockbufsize ; 
 int /*<<< orphan*/  tags ; 
 int /*<<< orphan*/  targetAddress ; 
 int /*<<< orphan*/  targetAlias ; 
 int /*<<< orphan*/  targetName ; 
 int /*<<< orphan*/  targetPortalGroupTag ; 
 int /*<<< orphan*/  tgtChapName ; 
 int /*<<< orphan*/  tgtChapSecret ; 

__attribute__((used)) static void
FUNC4(isc_opt_t *op, int which, void *rval)
{
     switch(which) {
	  FUNC0(port, FUNC2(rval));
	  FUNC0(tags, FUNC2(rval));
	  FUNC0(maxluns, FUNC2(rval));
	  FUNC0(iqn, FUNC3(rval));
	  FUNC0(sockbufsize, FUNC2(rval));

	  FUNC0(maxConnections, FUNC2(rval));
	  FUNC0(maxRecvDataSegmentLength, FUNC2(rval));
	  FUNC0(maxXmitDataSegmentLength, FUNC2(rval));
	  FUNC0(maxBurstLength, FUNC2(rval));
	  FUNC0(firstBurstLength, FUNC2(rval));
	  FUNC0(defaultTime2Wait, FUNC2(rval));
	  FUNC0(defaultTime2Retain, FUNC2(rval));
	  FUNC0(maxOutstandingR2T, FUNC2(rval));
	  FUNC0(errorRecoveryLevel, FUNC2(rval));
	  FUNC0(targetPortalGroupTag, FUNC2(rval));
	  FUNC0(headerDigest, FUNC3(rval));
	  FUNC0(dataDigest, FUNC3(rval));

	  FUNC0(targetAddress, FUNC3(rval));
	  FUNC0(targetAlias, FUNC3(rval));
	  FUNC0(targetName, FUNC3(rval));
	  FUNC0(initiatorName, FUNC3(rval));
	  FUNC0(initiatorAlias, FUNC3(rval));
	  FUNC0(authMethod, FUNC3(rval));
	  FUNC0(chapSecret, FUNC3(rval));
	  FUNC0(chapIName, FUNC3(rval));
	  FUNC0(chapDigest, FUNC3(rval));

	  FUNC0(tgtChapName, FUNC3(rval));
	  FUNC0(tgtChapSecret, FUNC3(rval));

	  FUNC0(initialR2T, FUNC1(rval));
	  FUNC0(immediateData, FUNC1(rval));
	  FUNC0(dataPDUInOrder, FUNC1(rval));
	  FUNC0(dataSequenceInOrder, FUNC1(rval));
     }
}