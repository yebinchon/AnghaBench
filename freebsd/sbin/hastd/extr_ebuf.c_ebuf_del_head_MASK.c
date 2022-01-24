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
struct ebuf {scalar_t__ eb_magic; size_t eb_size; size_t eb_used; } ;

/* Variables and functions */
 scalar_t__ EBUF_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void
FUNC1(struct ebuf *eb, size_t size)
{

	FUNC0(eb != NULL && eb->eb_magic == EBUF_MAGIC);
	FUNC0(size <= eb->eb_size);

	eb->eb_used += size;
	eb->eb_size -= size;
}