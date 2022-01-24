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
struct _region {int dummy; } ;

/* Variables and functions */
 size_t _CITRUS_DB_HEADER_SIZE ; 
 size_t _CITRUS_DB_MAGIC_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct _region*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct _region*,size_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC2(struct _region *r, const char *magic, size_t *rofs,
    size_t num_entries)
{

	while (*rofs<_CITRUS_DB_MAGIC_SIZE)
		FUNC1(r, rofs, *magic++);
	FUNC0(r, rofs, num_entries);
	FUNC0(r, rofs, _CITRUS_DB_HEADER_SIZE);
}