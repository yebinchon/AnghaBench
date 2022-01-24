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
 int /*<<< orphan*/  RSN_CIPHER_SUITE_CCMP ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_CCMP_256 ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_GCMP ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_GCMP_256 ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_NONE ; 
 int /*<<< orphan*/  RSN_CIPHER_SUITE_TKIP ; 
 int RSN_SELECTOR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int WPA_CIPHER_CCMP ; 
 int WPA_CIPHER_CCMP_256 ; 
 int WPA_CIPHER_GCMP ; 
 int WPA_CIPHER_GCMP_256 ; 
 int WPA_CIPHER_NONE ; 
 int WPA_CIPHER_TKIP ; 

int FUNC1(u8 *start, int ciphers)
{
	u8 *pos = start;

	if (ciphers & WPA_CIPHER_CCMP_256) {
		FUNC0(pos, RSN_CIPHER_SUITE_CCMP_256);
		pos += RSN_SELECTOR_LEN;
	}
	if (ciphers & WPA_CIPHER_GCMP_256) {
		FUNC0(pos, RSN_CIPHER_SUITE_GCMP_256);
		pos += RSN_SELECTOR_LEN;
	}
	if (ciphers & WPA_CIPHER_CCMP) {
		FUNC0(pos, RSN_CIPHER_SUITE_CCMP);
		pos += RSN_SELECTOR_LEN;
	}
	if (ciphers & WPA_CIPHER_GCMP) {
		FUNC0(pos, RSN_CIPHER_SUITE_GCMP);
		pos += RSN_SELECTOR_LEN;
	}
	if (ciphers & WPA_CIPHER_TKIP) {
		FUNC0(pos, RSN_CIPHER_SUITE_TKIP);
		pos += RSN_SELECTOR_LEN;
	}
	if (ciphers & WPA_CIPHER_NONE) {
		FUNC0(pos, RSN_CIPHER_SUITE_NONE);
		pos += RSN_SELECTOR_LEN;
	}

	return (pos - start) / RSN_SELECTOR_LEN;
}