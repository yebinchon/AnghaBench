#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct _citrus_region {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct _citrus_region const*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_region*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct _citrus_region const*,size_t) ; 

__attribute__((used)) static __inline int
FUNC3(struct _citrus_region *subr,
    const struct _citrus_region *r, size_t ofs, size_t sz)
{

	if (FUNC0(r, ofs, sz))
		return (-1);
	FUNC1(subr, FUNC2(r, ofs), sz);
	return (0);
}