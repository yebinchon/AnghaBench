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
typedef  int /*<<< orphan*/  prof_tdata_tree_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static prof_tdata_t *
FUNC1(prof_tdata_tree_t *tdatas, prof_tdata_t *tdata,
    void *arg) {
	tsdn_t *tsdn = (tsdn_t *)arg;

	return (FUNC0(tsdn, tdata) ? tdata : NULL);
}