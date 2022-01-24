#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct channel_connect {TYPE_1__* aitop; TYPE_1__* host; } ;
struct TYPE_3__ {scalar_t__ ai_family; } ;

/* Variables and functions */
 scalar_t__ AF_UNIX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct channel_connect*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct channel_connect *cctx)
{
	FUNC0(cctx->host);
	if (cctx->aitop) {
		if (cctx->aitop->ai_family == AF_UNIX)
			FUNC0(cctx->aitop);
		else
			FUNC1(cctx->aitop);
	}
	FUNC2(cctx, 0, sizeof(*cctx));
}