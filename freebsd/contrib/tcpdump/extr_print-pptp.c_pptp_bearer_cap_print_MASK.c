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
typedef  int /*<<< orphan*/  netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int PPTP_BEARER_CAP_ANALOG_MASK ; 
 int PPTP_BEARER_CAP_DIGITAL_MASK ; 

__attribute__((used)) static void
FUNC2(netdissect_options *ndo,
                      const uint32_t *bearer_cap)
{
	FUNC1((ndo, " BEARER_CAP(%s%s)",
	          FUNC0(bearer_cap) & PPTP_BEARER_CAP_DIGITAL_MASK ? "D" : "",
	          FUNC0(bearer_cap) & PPTP_BEARER_CAP_ANALOG_MASK ? "A" : ""));
}