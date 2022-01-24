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
struct TYPE_3__ {size_t seed_len; int /*<<< orphan*/ * seed; } ;
typedef  TYPE_1__ EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_GROUP_SET_SEED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

size_t FUNC4(EC_GROUP *group, const unsigned char *p, size_t len)
{
    FUNC1(group->seed);
    group->seed = NULL;
    group->seed_len = 0;

    if (!len || !p)
        return 1;

    if ((group->seed = FUNC2(len)) == NULL) {
        FUNC0(EC_F_EC_GROUP_SET_SEED, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC3(group->seed, p, len);
    group->seed_len = len;

    return len;
}