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
struct basic_test_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 struct bufferevent* FUNC0 (struct bufferevent*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bufferevent*) ; 
 struct bufferevent* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bufferevent*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct basic_test_data *data = arg;
	struct bufferevent *bev = NULL, *bevf = NULL;

	bev = FUNC2(data->base, -1, 0);
	FUNC3(bev);
	bevf = FUNC0(bev, NULL, NULL, 0, NULL, NULL);
	FUNC3(bevf);

end:
	if (bevf)
		FUNC1(bevf);
	if (bev)
		FUNC1(bev);
}