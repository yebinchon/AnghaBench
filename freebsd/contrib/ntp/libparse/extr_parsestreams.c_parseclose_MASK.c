#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {void* q_ptr; } ;
typedef  TYPE_1__ queue_t ;
struct TYPE_9__ {int /*<<< orphan*/  parse_io; TYPE_1__* parse_dqueue; } ;
typedef  TYPE_2__ parsestream_t ;
typedef  void* caddr_t ;
struct TYPE_10__ {void* q_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD_CLOSE ; 
 TYPE_6__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  parsebusy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static int
FUNC7(
	queue_t *q,
	int flags
	)
{
	register parsestream_t *parse = (parsestream_t *)(void *)q->q_ptr;
	register unsigned long s;

	FUNC4(DD_CLOSE,("parse: CLOSE\n"));

	s = FUNC5();

	if (parse->parse_dqueue)
	    FUNC1(parse->parse_dqueue, q);
	parse->parse_dqueue = (queue_t *)0;

	(void) FUNC6(s);

	FUNC3(&parse->parse_io);

	FUNC2((caddr_t)parse, sizeof(parsestream_t));

	q->q_ptr = (caddr_t)NULL;
	FUNC0(q)->q_ptr = (caddr_t)NULL;

#ifdef VDDRV
	parsebusy--;
#endif
	return 0;
}