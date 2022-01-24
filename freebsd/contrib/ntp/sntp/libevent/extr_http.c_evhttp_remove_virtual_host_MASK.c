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
struct evhttp {int /*<<< orphan*/ * vhost_pattern; int /*<<< orphan*/  virtualhosts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct evhttp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next_vhost ; 

int
FUNC2(struct evhttp* http, struct evhttp* vhost)
{
	if (vhost->vhost_pattern == NULL)
		return (-1);

	FUNC0(&http->virtualhosts, vhost, next_vhost);

	FUNC1(vhost->vhost_pattern);
	vhost->vhost_pattern = NULL;

	return (0);
}