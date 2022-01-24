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
struct TYPE_3__ {int /*<<< orphan*/  const* seconds; } ;
typedef  TYPE_1__ TS_ACCURACY ;
typedef  int /*<<< orphan*/  const ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  const* FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_ACCURACY_SET_SECONDS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(TS_ACCURACY *a, const ASN1_INTEGER *seconds)
{
    ASN1_INTEGER *new_seconds;

    if (a->seconds == seconds)
        return 1;
    new_seconds = FUNC0(seconds);
    if (new_seconds == NULL) {
        FUNC2(TS_F_TS_ACCURACY_SET_SECONDS, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    FUNC1(a->seconds);
    a->seconds = new_seconds;
    return 1;
}