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
struct mq_attr {int mq_msgsize; } ;
typedef  int /*<<< orphan*/  mqd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int MQ_PRIO_BASE ; 
 char* FUNC1 (int,int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int /*<<< orphan*/ ,struct mq_attr*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned int*) ; 

__attribute__((used)) static void
FUNC4(mqd_t mqfd)
{
	struct mq_attr mqa;
	char *m;
	unsigned p;
	int len;

	FUNC0(FUNC2(mqfd, &mqa) != -1, "mq_getattr failed %d",
	    errno);

	len = mqa.mq_msgsize;
	m = FUNC1(1, len);
	FUNC0(m != NULL, "calloc failed");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 1 failed: %d", errno);
	FUNC0(p == (MQ_PRIO_BASE + 1) && m[0] == 'b',
	    "mq_receive 1 prio/data mismatch");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 2 failed: %d", errno);
	FUNC0(p == (MQ_PRIO_BASE + 1) && m[0] == 'f',
	    "mq_receive 2 prio/data mismatch");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 3 failed: %d", errno);
	FUNC0(p == MQ_PRIO_BASE && m[0] == 'a',
	    "mq_receive 3 prio/data mismatch");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 4 failed: %d", errno);
	FUNC0(p == MQ_PRIO_BASE && m[0] == 'c',
	    "mq_receive 4 prio/data mismatch");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 5 failed: %d", errno);
	FUNC0(p == (MQ_PRIO_BASE - 1) && m[0] == 'd',
	    "mq_receive 5 prio/data mismatch");

	FUNC0(FUNC3(mqfd, m, len, &p) != -1,
	    "mq_receive 6 failed: %d", errno);
	FUNC0(p == 0 && m[0] == 'e',
	    "mq_receive 6 prio/data mismatch");
}