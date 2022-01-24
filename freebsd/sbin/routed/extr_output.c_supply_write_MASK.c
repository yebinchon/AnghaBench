#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ws_buf {int type; scalar_t__ buf; scalar_t__ n; } ;
struct TYPE_9__ {int /*<<< orphan*/  type; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {TYPE_1__ sin_addr; } ;
struct TYPE_7__ {TYPE_4__* a; int /*<<< orphan*/  npackets; int /*<<< orphan*/ * ifp; TYPE_3__ to; } ;

/* Variables and functions */
#define  NO_OUT_MULTICAST 129 
#define  NO_OUT_RIPV2 128 
 int /*<<< orphan*/  RIP_AUTH_MD5 ; 
 int /*<<< orphan*/  FUNC0 (struct ws_buf*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ws_buf*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 TYPE_2__ ws ; 

__attribute__((used)) static void
FUNC6(struct ws_buf *wb)
{
	/* Output multicast only if legal.
	 * If we would multicast and it would be illegal, then discard the
	 * packet.
	 */
	switch (wb->type) {
	case NO_OUT_MULTICAST:
		FUNC5("skip multicast to %s because impossible",
			  FUNC3(ws.to.sin_addr.s_addr));
		break;
	case NO_OUT_RIPV2:
		break;
	default:
		if (ws.a != NULL && ws.a->type == RIP_AUTH_MD5)
			FUNC1(wb,ws.a);
		if (FUNC4(wb->type, &ws.to, ws.ifp, wb->buf,
			   ((char *)wb->n - (char*)wb->buf)) < 0
		    && ws.ifp != NULL)
			FUNC2(ws.ifp);
		ws.npackets++;
		break;
	}

	FUNC0(wb,ws.a);
}