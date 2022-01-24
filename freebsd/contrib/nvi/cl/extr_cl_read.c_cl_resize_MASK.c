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
typedef  int /*<<< orphan*/  u_long ;
typedef  int /*<<< orphan*/  b1 ;
struct TYPE_3__ {void* len; int /*<<< orphan*/ * bp; } ;
typedef  int /*<<< orphan*/  SCR ;
typedef  int /*<<< orphan*/  CHAR_T ;
typedef  TYPE_1__ ARGS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(SCR *sp, size_t lines, size_t columns)
{
	ARGS *argv[2], a, b;
	CHAR_T b1[1024];

	a.bp = b1;
	b.bp = NULL;
	a.len = b.len = 0;
	argv[0] = &a;
	argv[1] = &b;

	a.len = FUNC1(b1, sizeof(b1), FUNC0("lines=%lu"), (u_long)lines);
	if (FUNC2(sp, argv, NULL))
		return (1);
	a.len = FUNC1(b1, sizeof(b1), FUNC0("columns=%lu"), (u_long)columns);
	if (FUNC2(sp, argv, NULL))
		return (1);
	return (0);
}