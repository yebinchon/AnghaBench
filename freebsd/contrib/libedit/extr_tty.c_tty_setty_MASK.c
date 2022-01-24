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
struct termios {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  el_infd; } ;
typedef  TYPE_1__ EditLine ;

/* Variables and functions */
 scalar_t__ EINTR ; 
 scalar_t__ errno ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct termios const*) ; 

__attribute__((used)) static int
FUNC1(EditLine *el, int action, const struct termios *t)
{
	int rv;
	while ((rv = FUNC0(el->el_infd, action, t)) == -1 && errno == EINTR)
		continue;
	return rv;
}