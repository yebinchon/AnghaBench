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
struct TYPE_3__ {int nid; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_GROUP_NEW_BY_CURVE_NAME ; 
 int /*<<< orphan*/  EC_R_UNKNOWN_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curve_list ; 
 size_t curve_list_length ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__) ; 

EC_GROUP *FUNC2(int nid)
{
    size_t i;
    EC_GROUP *ret = NULL;

    if (nid <= 0)
        return NULL;

    for (i = 0; i < curve_list_length; i++)
        if (curve_list[i].nid == nid) {
            ret = FUNC1(curve_list[i]);
            break;
        }

    if (ret == NULL) {
        FUNC0(EC_F_EC_GROUP_NEW_BY_CURVE_NAME, EC_R_UNKNOWN_GROUP);
        return NULL;
    }

    return ret;
}