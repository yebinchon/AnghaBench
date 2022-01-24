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
typedef  int uint64_t ;
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int NSTIME_SEC_MAX ; 

__attribute__((used)) static bool
FUNC1(ssize_t decay_ms) {
	if (decay_ms < -1) {
		return false;
	}
	if (decay_ms == -1 || (uint64_t)decay_ms <= NSTIME_SEC_MAX *
	    FUNC0(1000)) {
		return true;
	}
	return false;
}