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
typedef  int /*<<< orphan*/  isc_thread_key_t ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,void*) ; 

int
FUNC2(isc_thread_key_t key, void *value) {
	return (FUNC1(key, value) ? 0 : FUNC0());
}