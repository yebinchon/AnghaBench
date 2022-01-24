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
 size_t FUNC0 (struct _citrus_memory_stream*) ; 
 int /*<<< orphan*/  FUNC1 (struct _citrus_region*,void*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (void*,char,size_t) ; 

void *
FUNC5(struct _citrus_memory_stream *ms,
    struct _citrus_region *r, char ch)
{
	void *chr, *head;
	size_t sz;

	if (ms->ms_pos >= FUNC3(&ms->ms_region))
		return (NULL);

	head = FUNC2(&ms->ms_region, ms->ms_pos);
	chr = FUNC4(head, ch, FUNC0(ms));
	if (chr == NULL) {
		FUNC1(r, head, FUNC0(ms));
		ms->ms_pos = FUNC3(&ms->ms_region);
		return (NULL);
	}
	sz = (char *)chr - (char *)head;

	FUNC1(r, head, sz);
	ms->ms_pos += sz + 1;

	return (chr);
}