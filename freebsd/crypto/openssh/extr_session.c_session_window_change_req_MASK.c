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
struct ssh {int dummy; } ;
struct TYPE_3__ {void* ypixel; void* xpixel; void* col; void* row; int /*<<< orphan*/  ptyfd; } ;
typedef  TYPE_1__ Session ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,void*,void*,void*) ; 

__attribute__((used)) static int
FUNC3(struct ssh *ssh, Session *s)
{
	s->col = FUNC1();
	s->row = FUNC1();
	s->xpixel = FUNC1();
	s->ypixel = FUNC1();
	FUNC0();
	FUNC2(s->ptyfd, s->row, s->col, s->xpixel, s->ypixel);
	return 1;
}