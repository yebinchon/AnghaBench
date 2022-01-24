#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pcap_dbus {int /*<<< orphan*/  conn; } ;
struct TYPE_7__ {int /*<<< orphan*/  errbuf; struct pcap_dbus* priv; } ;
typedef  TYPE_1__ pcap_t ;
struct TYPE_8__ {int /*<<< orphan*/  message; } ;
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  TYPE_2__ DBusError ;

/* Variables and functions */
 TYPE_2__ DBUS_ERROR_INIT ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC3 (void const*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(pcap_t *handle, const void *buf, size_t size)
{
	/* XXX, not tested */
	struct pcap_dbus *handlep = handle->priv;

	DBusError error = DBUS_ERROR_INIT;
	DBusMessage *msg;

	if (!(msg = FUNC3(buf, size, &error))) {
		FUNC5(handle->errbuf, PCAP_ERRBUF_SIZE, "dbus_message_demarshal() failed: %s", error.message);
		FUNC2(&error);
		return -1;
	}

	FUNC1(handlep->conn, msg, NULL);
	FUNC0(handlep->conn);

	FUNC4(msg);
	return 0;
}