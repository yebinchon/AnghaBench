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
struct bufferevent_filtered {int /*<<< orphan*/  context; int /*<<< orphan*/  (* free_context ) (int /*<<< orphan*/ ) ;} ;
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bufferevent_filtered*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct bufferevent_filtered* FUNC2 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC3(struct bufferevent *bev)
{
	struct bufferevent_filtered *bevf = FUNC2(bev);
	FUNC0(bevf);
	if (bevf->free_context)
		bevf->free_context(bevf->context);
}