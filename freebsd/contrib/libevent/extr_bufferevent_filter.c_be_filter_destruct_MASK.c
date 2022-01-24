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
struct bufferevent_filtered {scalar_t__ outbuf_cb; scalar_t__ inbuf_cb; int /*<<< orphan*/  context; int /*<<< orphan*/  (* free_context ) (int /*<<< orphan*/ ) ;} ;
struct bufferevent {int /*<<< orphan*/  output; int /*<<< orphan*/  input; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_filtered*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bufferevent_filtered* FUNC3 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev)
{
	struct bufferevent_filtered *bevf = FUNC3(bev);
	FUNC0(bevf);
	if (bevf->free_context)
		bevf->free_context(bevf->context);

	if (bevf->inbuf_cb)
		FUNC1(bev->input, bevf->inbuf_cb);

	if (bevf->outbuf_cb)
		FUNC1(bev->output, bevf->outbuf_cb);
}