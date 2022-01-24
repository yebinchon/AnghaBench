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
struct sparse_block {size_t remaining; scalar_t__ is_hole; struct sparse_block* next; } ;
struct TYPE_3__ {unsigned char const* s; } ;
struct pax {struct sparse_block* sparse_list; TYPE_1__ sparse_map; int /*<<< orphan*/  sparse_map_padding; } ;
struct archive_write {scalar_t__ format_data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ARCHIVE_OK ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct archive_write*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 size_t FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct sparse_block*) ; 

__attribute__((used)) static ssize_t
FUNC5(struct archive_write *a, const void *buff, size_t s)
{
	struct pax *pax;
	size_t ws;
	size_t total;
	int ret;

	pax = (struct pax *)a->format_data;

	/*
	 * According to GNU PAX format 1.0, write a sparse map
	 * before the body.
	 */
	if (FUNC3(&(pax->sparse_map))) {
		ret = FUNC1(a, pax->sparse_map.s,
		    FUNC3(&(pax->sparse_map)));
		if (ret != ARCHIVE_OK)
			return (ret);
		ret = FUNC0(a, pax->sparse_map_padding);
		if (ret != ARCHIVE_OK)
			return (ret);
		FUNC2(&(pax->sparse_map));
	}

	total = 0;
	while (total < s) {
		const unsigned char *p;

		while (pax->sparse_list != NULL &&
		    pax->sparse_list->remaining == 0) {
			struct sparse_block *sb = pax->sparse_list->next;
			FUNC4(pax->sparse_list);
			pax->sparse_list = sb;
		}

		if (pax->sparse_list == NULL)
			return (total);

		p = ((const unsigned char *)buff) + total;
		ws = s - total;
		if (ws > pax->sparse_list->remaining)
			ws = (size_t)pax->sparse_list->remaining;

		if (pax->sparse_list->is_hole) {
			/* Current block is hole thus we do not write
			 * the body. */
			pax->sparse_list->remaining -= ws;
			total += ws;
			continue;
		}

		ret = FUNC1(a, p, ws);
		pax->sparse_list->remaining -= ws;
		total += ws;
		if (ret != ARCHIVE_OK)
			return (ret);
	}
	return (total);
}