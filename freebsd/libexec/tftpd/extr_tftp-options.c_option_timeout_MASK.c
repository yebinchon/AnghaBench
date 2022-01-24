#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  o_reply; int /*<<< orphan*/ * o_request; } ;

/* Variables and functions */
 int DEBUG_OPTIONS ; 
 int /*<<< orphan*/  EBADOP ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 size_t OPT_TIMEOUT ; 
 int TIMEOUT_MAX ; 
 int TIMEOUT_MIN ; 
 scalar_t__ acting_as_client ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  maxtimeouts ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  timeoutnetwork ; 
 int timeoutpacket ; 

int
FUNC6(int peer)
{
	int to;

	if (options[OPT_TIMEOUT].o_request == NULL)
		return (0);

	to = FUNC0(options[OPT_TIMEOUT].o_request);
	if (to < TIMEOUT_MIN || to > TIMEOUT_MAX) {
		FUNC5(acting_as_client ? LOG_ERR : LOG_WARNING,
		    "Received bad value for timeout. "
		    "Should be between %d and %d, received %d",
		    TIMEOUT_MIN, TIMEOUT_MAX, to);
		FUNC2(peer, EBADOP);
		if (acting_as_client)
			return (1);
		FUNC1(1);
	} else {
		timeoutpacket = to;
		options[OPT_TIMEOUT].o_reply =
			FUNC4(options[OPT_TIMEOUT].o_request);
	}
	FUNC3(timeoutpacket, timeoutnetwork, maxtimeouts);

	if (debug&DEBUG_OPTIONS)
		FUNC5(LOG_DEBUG, "Setting timeout to '%s'",
			options[OPT_TIMEOUT].o_reply);

	return (0);
}