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
struct rad_handle {int fd; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RADIUS_SERVER ; 
 struct rad_handle* FUNC0 () ; 

struct rad_handle *
FUNC1(int fd)
{
	struct rad_handle *h;

	h = FUNC0();
	if (h != NULL) {
	        h->type = RADIUS_SERVER;
	        h->fd = fd;
	}
	return h;
}