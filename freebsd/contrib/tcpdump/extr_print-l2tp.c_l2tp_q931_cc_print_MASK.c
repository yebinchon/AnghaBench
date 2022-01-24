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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC3(netdissect_options *ndo, const u_char *dat, u_int length)
{
	if (length < 3) {
		FUNC0((ndo, "AVP too short"));
		return;
	}
	FUNC1(ndo, (const uint16_t *)dat);
	FUNC0((ndo, ", %02x", dat[2]));
	dat += 3;
	length -= 3;
	if (length != 0) {
		FUNC0((ndo, " "));
		FUNC2(ndo, dat, length);
	}
}