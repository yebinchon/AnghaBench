#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
struct TYPE_5__ {scalar_t__ nvp_type; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ NV_TYPE_BOOL_ARRAY ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*,int const*,int,int) ; 

int
FUNC3(nvpair_t *nvp, const bool value)
{

	FUNC0(nvp);
	FUNC1(nvp->nvp_type == NV_TYPE_BOOL_ARRAY);
	return (FUNC2(nvp, &value, sizeof(value), sizeof(value)));
}