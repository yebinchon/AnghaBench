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
struct TYPE_3__ {int /*<<< orphan*/  const* time; } ;
typedef  TYPE_1__ TS_TST_INFO ;
typedef  int /*<<< orphan*/  const ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_TST_INFO_SET_TIME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(TS_TST_INFO *a, const ASN1_GENERALIZEDTIME *gtime)
{
    ASN1_GENERALIZEDTIME *new_time;

    if (a->time == gtime)
        return 1;
    new_time = FUNC1(gtime);
    if (new_time == NULL) {
        FUNC2(TS_F_TS_TST_INFO_SET_TIME, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC0(a->time);
    a->time = new_time;
    return 1;
}