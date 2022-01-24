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
struct TYPE_3__ {int /*<<< orphan*/ * status_info; } ;
typedef  int /*<<< orphan*/  TS_STATUS_INFO ;
typedef  TYPE_1__ TS_RESP ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_RESP_SET_STATUS_INFO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(TS_RESP *a, TS_STATUS_INFO *status_info)
{
    TS_STATUS_INFO *new_status_info;

    if (a->status_info == status_info)
        return 1;
    new_status_info = FUNC0(status_info);
    if (new_status_info == NULL) {
        FUNC2(TS_F_TS_RESP_SET_STATUS_INFO, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC1(a->status_info);
    a->status_info = new_status_info;

    return 1;
}