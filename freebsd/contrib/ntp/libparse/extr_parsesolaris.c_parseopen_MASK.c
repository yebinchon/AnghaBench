#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ q_ptr; } ;
typedef  TYPE_3__ queue_t ;
struct TYPE_14__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_15__ {scalar_t__ serial; TYPE_1__ tv; } ;
struct TYPE_17__ {int /*<<< orphan*/  parse_io; TYPE_2__ parse_ppsclockev; int /*<<< orphan*/  parse_status; TYPE_3__* parse_queue; } ;
typedef  TYPE_4__ parsestream_t ;
typedef  int /*<<< orphan*/  dev_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ caddr_t ;
struct TYPE_18__ {int /*<<< orphan*/  strmod_linkinfo; } ;
struct TYPE_13__ {scalar_t__ q_ptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  CE_CONT ; 
 int /*<<< orphan*/  DD_OPEN ; 
 int EBUSY ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int MODOPEN ; 
 int /*<<< orphan*/  M_PARSE ; 
 int /*<<< orphan*/  PARSE_ENABLE ; 
 TYPE_11__* FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 
 TYPE_9__ modlstrmod ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(
	  queue_t *q,
	  dev_t *dev,
	  int flag,
	  int sflag,
	  cred_t *credp
	  )
{
	register parsestream_t *parse;
	static int notice = 0;

	FUNC7(DD_OPEN, "parse: OPEN - q=%x\n", q);

	if (sflag != MODOPEN)
	{			/* open only for modules */
		FUNC7(DD_OPEN, "parse: OPEN - FAILED - not MODOPEN\n");
		return EIO;
	}

	if (q->q_ptr != (caddr_t)NULL)
	{
		FUNC7(DD_OPEN, "parse: OPEN - FAILED - EXCLUSIVE ONLY\n");
		return EBUSY;
	}

	q->q_ptr = (caddr_t)FUNC4(sizeof(parsestream_t), KM_SLEEP);
	if (q->q_ptr == (caddr_t)0)
	{
		return ENOMEM;
	}

	FUNC7(DD_OPEN, "parse: OPEN - parse area q=%x, q->q_ptr=%x\n", q, q->q_ptr);
	FUNC0(q)->q_ptr = q->q_ptr;
	FUNC7(DD_OPEN, "parse: OPEN - WQ parse area q=%x, q->q_ptr=%x\n", FUNC0(q), FUNC0(q)->q_ptr);

	parse = (parsestream_t *) q->q_ptr;
	FUNC1((caddr_t)parse, sizeof(*parse));
	parse->parse_queue     = q;
	parse->parse_status    = PARSE_ENABLE;
	parse->parse_ppsclockev.tv.tv_sec  = 0;
	parse->parse_ppsclockev.tv.tv_usec = 0;
	parse->parse_ppsclockev.serial     = 0;

	FUNC9(q);

	FUNC7(DD_OPEN, "parse: OPEN - initializing io subsystem q=%x\n", q);

	if (!FUNC6(&parse->parse_io))
	{
		/*
		 * ok guys - beat it
		 */
		FUNC8(q);

		FUNC5((caddr_t)parse, sizeof(parsestream_t));

		return EIO;
	}

	FUNC7(DD_OPEN, "parse: OPEN - initializing stream q=%x\n", q);

	if (FUNC10(q, M_PARSE))
	{
		(void) FUNC3(q);	/* hook up PPS ISR routines if possible */
		FUNC7(DD_OPEN, "parse: OPEN - SUCCEEDED\n");

		/*
		 * I know that you know the delete key, but you didn't write this
		 * code, did you ? - So, keep the message in here.
		 */
		if (!notice)
		{
		  FUNC2(CE_CONT, "?%s: Copyright (c) 1993-2005, Frank Kardel\n", modlstrmod.strmod_linkinfo);
			notice = 1;
		}

		return 0;
	}
	else
	{
		FUNC8(q);

		FUNC5((caddr_t)parse, sizeof(parsestream_t));

		return EIO;
	}
}