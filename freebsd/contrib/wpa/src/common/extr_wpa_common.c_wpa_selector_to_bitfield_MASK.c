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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int WPA_CIPHER_CCMP ; 
 int WPA_CIPHER_NONE ; 
 scalar_t__ WPA_CIPHER_SUITE_CCMP ; 
 scalar_t__ WPA_CIPHER_SUITE_NONE ; 
 scalar_t__ WPA_CIPHER_SUITE_TKIP ; 
 int WPA_CIPHER_TKIP ; 

__attribute__((used)) static int FUNC1(const u8 *s)
{
	if (FUNC0(s) == WPA_CIPHER_SUITE_NONE)
		return WPA_CIPHER_NONE;
	if (FUNC0(s) == WPA_CIPHER_SUITE_TKIP)
		return WPA_CIPHER_TKIP;
	if (FUNC0(s) == WPA_CIPHER_SUITE_CCMP)
		return WPA_CIPHER_CCMP;
	return 0;
}