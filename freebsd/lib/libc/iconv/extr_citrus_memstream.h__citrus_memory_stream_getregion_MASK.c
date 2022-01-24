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
struct _citrus_memory_stream {scalar_t__ ms_pos; int /*<<< orphan*/  ms_region; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct _citrus_region*,void*,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __inline void *
FUNC3(struct _citrus_memory_stream *ms,
    struct _citrus_region *r, size_t sz)
{
	void *ret;

	if (ms->ms_pos + sz > FUNC2(&ms->ms_region))
		return (NULL);

	ret = FUNC1(&ms->ms_region, ms->ms_pos);
	ms->ms_pos += sz;
	if (r)
		FUNC0(r, ret, sz);

	return (ret);
}