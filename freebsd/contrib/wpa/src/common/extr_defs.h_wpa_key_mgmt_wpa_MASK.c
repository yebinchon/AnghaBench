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

/* Variables and functions */
 int WPA_KEY_MGMT_DPP ; 
 int WPA_KEY_MGMT_OWE ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static inline int FUNC4(int akm)
{
	return FUNC2(akm) ||
		FUNC3(akm) ||
		FUNC0(akm) ||
		FUNC1(akm) ||
		akm == WPA_KEY_MGMT_OWE ||
		akm == WPA_KEY_MGMT_DPP;
}