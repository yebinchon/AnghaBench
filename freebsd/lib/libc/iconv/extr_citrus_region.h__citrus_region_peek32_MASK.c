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
typedef  int /*<<< orphan*/  uint32_t ;
struct _citrus_region {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _citrus_region const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static __inline uint32_t
FUNC2(const struct _citrus_region *r, size_t pos)
{
	uint32_t val;

	FUNC1(&val, FUNC0(r, pos), (size_t)4);
	return (val);
}