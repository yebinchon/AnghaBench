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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  delay ;

/* Variables and functions */
 int EDOM ; 
 int EINVAL ; 
 int ERANGE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, uint32_t *tx_delay, uint32_t *rx_delay)
{
	phandle_t node;
	uint32_t delay;

	if (tx_delay == NULL || rx_delay == NULL)
		return (EINVAL);
	*tx_delay = *rx_delay = 0;
	node = FUNC2(dev);

	if (FUNC0(node, "tx-delay", &delay, sizeof(delay)) >= 0)
		*tx_delay = delay;
	else if (FUNC0(node, "allwinner,tx-delay-ps", &delay,
	    sizeof(delay)) >= 0) {
		if ((delay % 100) != 0) {
			FUNC1(dev, "tx-delay-ps is not a multiple of 100\n");
			return (EDOM);
		}
		*tx_delay = delay / 100;
	}
	if (*tx_delay > 7) {
		FUNC1(dev, "tx-delay out of range\n");
		return (ERANGE);
	}

	if (FUNC0(node, "rx-delay", &delay, sizeof(delay)) >= 0)
		*rx_delay = delay;
	else if (FUNC0(node, "allwinner,rx-delay-ps", &delay,
	    sizeof(delay)) >= 0) {
		if ((delay % 100) != 0) {
			FUNC1(dev, "rx-delay-ps is not within documented domain\n");
			return (EDOM);
		}
		*rx_delay = delay / 100;
	}
	if (*rx_delay > 31) {
		FUNC1(dev, "rx-delay out of range\n");
		return (ERANGE);
	}

	return (0);
}