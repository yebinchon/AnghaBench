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
typedef  int /*<<< orphan*/  tsdn_t ;
typedef  int /*<<< orphan*/  extent_t ;
typedef  int /*<<< orphan*/  base_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 

extent_t *
FUNC2(tsdn_t *tsdn, base_t *base) {
	size_t esn;
	extent_t *extent = FUNC0(tsdn, base, sizeof(extent_t),
	    CACHELINE, &esn);
	if (extent == NULL) {
		return NULL;
	}
	FUNC1(extent, esn);
	return extent;
}