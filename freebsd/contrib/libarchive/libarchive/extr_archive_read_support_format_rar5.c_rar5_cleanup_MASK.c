#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  filters; struct rar5* filtered_buf; struct rar5* window_buf; } ;
struct TYPE_4__ {struct rar5* push_buf; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ vol; } ;
struct archive_read {TYPE_3__* format; } ;
struct TYPE_6__ {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct rar5*) ; 
 int /*<<< orphan*/  FUNC2 (struct rar5*) ; 
 struct rar5* FUNC3 (struct archive_read*) ; 

__attribute__((used)) static int FUNC4(struct archive_read *a) {
	struct rar5* rar = FUNC3(a);

	FUNC1(rar->cstate.window_buf);
	FUNC1(rar->cstate.filtered_buf);

	FUNC1(rar->vol.push_buf);

	FUNC2(rar);
	FUNC0(&rar->cstate.filters);

	FUNC1(rar);
	a->format->data = NULL;

	return ARCHIVE_OK;
}