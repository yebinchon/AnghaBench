#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int db_index; int /*<<< orphan*/  term_name; } ;
typedef  TYPE_1__ TERMDATA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const void *a, const void *b)
{
    const TERMDATA *p = (const TERMDATA *) a;
    const TERMDATA *q = (const TERMDATA *) b;
    int result = FUNC0(p->term_name, q->term_name);

    if (result == 0) {
	result = (p->db_index - q->db_index);
    }
    return result;
}