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
 int GEONET_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(netdissect_options *ndo,
                      const u_char *bp)
{
	uint32_t lat, lon;

	if (!FUNC2(*bp, GEONET_ADDR_LEN))
		return (-1);
	FUNC1((ndo, "GN_ADDR:%s ", FUNC3 (ndo, bp, 0, GEONET_ADDR_LEN)));

	if (!FUNC2(*(bp+12), 8))
		return (-1);
	lat = FUNC0(bp+12);
	FUNC1((ndo, "lat:%d ", lat));
	lon = FUNC0(bp+16);
	FUNC1((ndo, "lon:%d", lon));
	return (0);
}