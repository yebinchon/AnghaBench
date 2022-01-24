#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  epref; int /*<<< orphan*/  flag; } ;
struct ccparty {TYPE_3__ epref; TYPE_2__* conn; } ;
struct TYPE_5__ {TYPE_1__* cc; } ;
struct TYPE_4__ {int log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ccparty*) ; 
 int CCLOG_PARTY_INST ; 
 int /*<<< orphan*/  FUNC1 (struct ccparty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ccparty*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

__attribute__((used)) static void
FUNC3(struct ccparty *party)
{

	if (party->conn->cc->log & CCLOG_PARTY_INST)
		FUNC2(party, "destroyed %u.%u", party->epref.flag,
		    party->epref.epref);

	FUNC1(party, link);
	FUNC0(party);
}