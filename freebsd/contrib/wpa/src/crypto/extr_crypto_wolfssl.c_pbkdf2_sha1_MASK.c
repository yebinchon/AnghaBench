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
typedef  int /*<<< orphan*/  byte ;

/* Variables and functions */
 int /*<<< orphan*/  WC_SHA ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int,size_t,int /*<<< orphan*/ ) ; 

int FUNC2(const char *passphrase, const u8 *ssid, size_t ssid_len,
		int iterations, u8 *buf, size_t buflen)
{
	if (FUNC1(buf, (const byte*)passphrase, FUNC0(passphrase), ssid,
		      ssid_len, iterations, buflen, WC_SHA) != 0)
		return -1;
	return 0;
}