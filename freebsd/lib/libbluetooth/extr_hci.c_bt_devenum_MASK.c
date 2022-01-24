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
struct sockaddr_hci {int hci_len; char* hci_node; int /*<<< orphan*/  hci_family; } ;
struct sockaddr {int dummy; } ;
struct nodeinfo {int /*<<< orphan*/  name; } ;
struct ng_btsocket_hci_raw_node_list_names {int num_names; struct nodeinfo* names; } ;
struct bt_devinfo {char* devname; } ;
typedef  int /*<<< orphan*/  rp ;
typedef  int /*<<< orphan*/  ha ;
typedef  scalar_t__ (* bt_devenum_cb_t ) (int,struct bt_devinfo*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  BLUETOOTH_PROTO_HCI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HCI_DEVMAX ; 
 int /*<<< orphan*/  PF_BLUETOOTH ; 
 int /*<<< orphan*/  SIOC_HCI_RAW_NODE_LIST_NAMES ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 scalar_t__ FUNC1 (struct bt_devinfo*) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct nodeinfo*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,struct ng_btsocket_hci_raw_node_list_names*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sockaddr_hci*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (int,struct bt_devinfo*,void*) ; 

int
FUNC11(bt_devenum_cb_t cb, void *arg)
{
	struct ng_btsocket_hci_raw_node_list_names	rp;
	struct bt_devinfo				di;
	struct sockaddr_hci				ha;
	int						s, i, count;

	rp.num_names = HCI_DEVMAX;
	rp.names = (struct nodeinfo *) FUNC2(rp.num_names,
						sizeof(struct nodeinfo));
	if (rp.names == NULL) {
		errno = ENOMEM;
		return (-1);
	}

	FUNC7(&ha, 0, sizeof(ha));
	ha.hci_len = sizeof(ha);
	ha.hci_family = AF_BLUETOOTH;
	ha.hci_node[0] = 'x';

	s = FUNC8(PF_BLUETOOTH, SOCK_RAW, BLUETOOTH_PROTO_HCI);
	if (s < 0) {
		FUNC5(rp.names);

		return (-1);
	}

	if (FUNC0(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
	    FUNC4(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
	    FUNC6(s, SIOC_HCI_RAW_NODE_LIST_NAMES, &rp, sizeof(rp)) < 0) {
		FUNC3(s);
		FUNC5(rp.names);

		return (-1);
	}

	for (count = 0, i = 0; i < rp.num_names; i ++) {
		FUNC9(di.devname, rp.names[i].name, sizeof(di.devname));
		if (FUNC1(&di) < 0)
			continue;

		count ++;

		if (cb == NULL)
			continue;

		FUNC9(ha.hci_node, rp.names[i].name, sizeof(ha.hci_node));
		if (FUNC0(s, (struct sockaddr *) &ha, sizeof(ha)) < 0 ||
		    FUNC4(s, (struct sockaddr *) &ha, sizeof(ha)) < 0)
			continue;

		if ((*cb)(s, &di, arg) > 0)
			break;
	}

	FUNC3 (s);
	FUNC5(rp.names);

	return (count);
}