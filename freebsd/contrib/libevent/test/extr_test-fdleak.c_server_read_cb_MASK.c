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
 int /*<<< orphan*/  FUNC0 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bufferevent*,unsigned char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct bufferevent *bev, void *ctx)
{
	while (FUNC3(FUNC0(bev))) {
		unsigned char tmp;
		FUNC1(bev, &tmp, 1);
		FUNC2(bev, &tmp, 1);
	}
}