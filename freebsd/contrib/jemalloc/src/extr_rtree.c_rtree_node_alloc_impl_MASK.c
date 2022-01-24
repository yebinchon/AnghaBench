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
typedef  int /*<<< orphan*/  rtree_t ;
typedef  int /*<<< orphan*/  rtree_node_elm_t ;

/* Variables and functions */
 int /*<<< orphan*/  CACHELINE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtree_node_elm_t *
FUNC2(tsdn_t *tsdn, rtree_t *rtree, size_t nelms) {
	return (rtree_node_elm_t *)FUNC1(tsdn, FUNC0(), nelms *
	    sizeof(rtree_node_elm_t), CACHELINE);
}