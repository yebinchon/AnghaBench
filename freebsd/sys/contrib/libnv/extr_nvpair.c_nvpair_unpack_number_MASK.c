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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_3__ {scalar_t__ nvp_type; int nvp_datasize; int /*<<< orphan*/  nvp_data; } ;
typedef  TYPE_1__ nvpair_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NV_TYPE_NUMBER ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char const*) ; 

const unsigned char *
FUNC4(bool isbe, nvpair_t *nvp, const unsigned char *ptr,
     size_t *leftp)
{

	FUNC1(nvp->nvp_type == NV_TYPE_NUMBER);

	if (nvp->nvp_datasize != sizeof(uint64_t)) {
		FUNC0(EINVAL);
		return (NULL);
	}
	if (*leftp < sizeof(uint64_t)) {
		FUNC0(EINVAL);
		return (NULL);
	}

	if (isbe)
		nvp->nvp_data = FUNC2(ptr);
	else
		nvp->nvp_data = FUNC3(ptr);

	ptr += sizeof(uint64_t);
	*leftp -= sizeof(uint64_t);

	return (ptr);
}