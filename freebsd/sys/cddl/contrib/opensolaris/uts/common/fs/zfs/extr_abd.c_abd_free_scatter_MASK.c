#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * abd_chunks; } ;
struct TYPE_8__ {TYPE_1__ abd_scatter; } ;
struct TYPE_9__ {size_t abd_size; int /*<<< orphan*/  abd_children; TYPE_2__ abd_u; } ;
typedef  TYPE_3__ abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 size_t FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  abdstat_scatter_chunk_waste ; 
 int /*<<< orphan*/  abdstat_scatter_cnt ; 
 int /*<<< orphan*/  abdstat_scatter_data_size ; 
 size_t zfs_abd_chunk_size ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(abd_t *abd)
{
	size_t n = FUNC4(abd);
	for (int i = 0; i < n; i++) {
		FUNC2(abd->abd_u.abd_scatter.abd_chunks[i]);
	}

	FUNC5(&abd->abd_children);
	FUNC0(abdstat_scatter_cnt);
	FUNC1(abdstat_scatter_data_size, -(int)abd->abd_size);
	FUNC1(abdstat_scatter_chunk_waste,
	    abd->abd_size - n * zfs_abd_chunk_size);

	FUNC3(abd);
}