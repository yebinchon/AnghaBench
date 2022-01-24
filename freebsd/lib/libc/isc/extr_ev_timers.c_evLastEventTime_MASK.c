#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec {int dummy; } ;
struct TYPE_4__ {struct timespec lastEventTime; } ;
typedef  TYPE_1__ evContext_p ;
struct TYPE_5__ {TYPE_1__* opaque; } ;
typedef  TYPE_2__ evContext ;

/* Variables and functions */

struct timespec
FUNC0(evContext opaqueCtx) {
	evContext_p *ctx = opaqueCtx.opaque;

	return (ctx->lastEventTime);
}