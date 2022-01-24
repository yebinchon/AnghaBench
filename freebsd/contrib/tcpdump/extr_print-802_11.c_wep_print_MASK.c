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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ IEEE802_11_IV_LEN ; 
 scalar_t__ IEEE802_11_KID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(netdissect_options *ndo,
          const u_char *p)
{
	uint32_t iv;

	if (!FUNC5(*p, IEEE802_11_IV_LEN + IEEE802_11_KID_LEN))
		return 0;
	iv = FUNC0(p);

	FUNC4((ndo, " IV:%3x Pad %x KeyID %x", FUNC1(iv), FUNC3(iv),
	    FUNC2(iv)));

	return 1;
}