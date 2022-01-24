#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_dtable; int /*<<< orphan*/  ml_dtable; int /*<<< orphan*/  ll_dtable; int /*<<< orphan*/  literals_dtable; } ;
typedef  TYPE_1__ frame_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(frame_context_t *const context) {
    FUNC1(&context->literals_dtable);

    FUNC0(&context->ll_dtable);
    FUNC0(&context->ml_dtable);
    FUNC0(&context->of_dtable);

    FUNC2(context, 0, sizeof(frame_context_t));
}