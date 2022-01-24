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
struct sockaddr_hci {int hci_len; int /*<<< orphan*/  hci_node; int /*<<< orphan*/  hci_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  ha ;
typedef  int /*<<< orphan*/  bdaddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_HCI ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_hci*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC8(char const *devname)
{
	struct sockaddr_hci	ha;
	bdaddr_t		ba;
	int			s;

	if (devname == NULL) {
		errno = EINVAL;
		return (-1);
	}

	FUNC6(&ha, 0, sizeof(ha));
	ha.hci_len = sizeof(ha);
	ha.hci_family = AF_BLUETOOTH;

	if (FUNC1(devname, &ba)) {
		if (!FUNC3(ha.hci_node, &ba))
			return (-1);
	} else if (FUNC2(devname, ha.hci_node,
					sizeof(ha.hci_node)) == NULL) {
		errno = ENXIO;
		return (-1);
	}

	s = FUNC7(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_HCI);
	if (s < 0)
		return (-1);

	if (FUNC0(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
	    FUNC5(s, (struct sockaddr *) &ha, sizeof(ha)) < 0) {
		FUNC4(s);
		return (-1);
	}

	return (s);
}