#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  abd_buf; } ;
struct TYPE_7__ {TYPE_1__ abd_linear; } ;
struct TYPE_8__ {int abd_flags; scalar_t__ abd_size; int /*<<< orphan*/  abd_children; TYPE_2__ abd_u; } ;
typedef  TYPE_3__ abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ABD_FLAG_META ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  abdstat_linear_cnt ; 
 int /*<<< orphan*/  abdstat_linear_data_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC6(abd_t *abd)
{
	if (abd->abd_flags & ABD_FLAG_META) {
		FUNC4(abd->abd_u.abd_linear.abd_buf, abd->abd_size);
	} else {
		FUNC5(abd->abd_u.abd_linear.abd_buf, abd->abd_size);
	}

	FUNC3(&abd->abd_children);
	FUNC0(abdstat_linear_cnt);
	FUNC1(abdstat_linear_data_size, -(int)abd->abd_size);

	FUNC2(abd);
}