#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_5__ {int /*<<< orphan*/  sin; int /*<<< orphan*/  sin6; } ;
struct TYPE_6__ {int bitlen; int family; int /*<<< orphan*/  refcount; TYPE_1__ add; } ;
typedef  TYPE_2__ isc_prefix_t ;
typedef  int /*<<< orphan*/  isc_mem_t ;

/* Variables and functions */
 int AF_INET ; 
 int AF_INET6 ; 
 int AF_UNSPEC ; 
 int /*<<< orphan*/  ISC_R_NOMEMORY ; 
 int /*<<< orphan*/  ISC_R_NOTIMPLEMENTED ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,int) ; 

__attribute__((used)) static isc_result_t
FUNC4(isc_mem_t *mctx, isc_prefix_t **target, int family, void *dest,
	    int bitlen)
{
	isc_prefix_t *prefix;

	FUNC0(target != NULL);

	if (family != AF_INET6 && family != AF_INET && family != AF_UNSPEC)
		return (ISC_R_NOTIMPLEMENTED);

	prefix = FUNC1(mctx, sizeof(isc_prefix_t));
	if (prefix == NULL)
		return (ISC_R_NOMEMORY);

	if (family == AF_INET6) {
		prefix->bitlen = (bitlen >= 0) ? bitlen : 128;
		FUNC3(&prefix->add.sin6, dest, 16);
	} else {
		/* AF_UNSPEC is "any" or "none"--treat it as AF_INET */
		prefix->bitlen = (bitlen >= 0) ? bitlen : 32;
		FUNC3(&prefix->add.sin, dest, 4);
	}

	prefix->family = family;

	FUNC2(&prefix->refcount, 1);

	*target = prefix;
	return (ISC_R_SUCCESS);
}