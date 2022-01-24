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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bufferevent_trigger_test_flags ; 
 int /*<<< orphan*/  n_reads_invoked ; 

__attribute__((used)) static void
FUNC2(struct bufferevent *bev, void *ctx)
{
	FUNC0(("Read successfully triggered."));
	n_reads_invoked++;
	FUNC1(bev, ~0, bufferevent_trigger_test_flags);
}