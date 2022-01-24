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
 int ETH_ALEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC2(const u8 *mac1, const u8 *mac2, u8 *out)
{
	if (FUNC0(mac1, mac2, ETH_ALEN) < 0) {
		FUNC1(out, mac1, ETH_ALEN);
		FUNC1(out + ETH_ALEN, mac2, ETH_ALEN);
	} else {
		FUNC1(out, mac2, ETH_ALEN);
		FUNC1(out + ETH_ALEN, mac1, ETH_ALEN);
	}
}