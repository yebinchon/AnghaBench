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
struct pcap_win {int /*<<< orphan*/  adapter; } ;
struct TYPE_7__ {int /*<<< orphan*/  errbuf; struct pcap_win* priv; } ;
typedef  TYPE_1__ pcap_t ;
typedef  int /*<<< orphan*/  bpf_u_int32 ;
typedef  size_t ULONG ;
struct TYPE_8__ {size_t Length; int /*<<< orphan*/  Data; int /*<<< orphan*/  Oid; } ;
typedef  TYPE_2__ PACKET_OID_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  PCAP_ERRBUF_SIZE ; 
 int PCAP_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC7(pcap_t *p, bpf_u_int32 oid, const void *data,
    size_t *lenp)
{
	struct pcap_win *pw = p->priv;
	PACKET_OID_DATA *oid_data_arg;
	char errbuf[PCAP_ERRBUF_SIZE+1];

	/*
	 * Allocate a PACKET_OID_DATA structure to hand to PacketRequest().
	 * It should be big enough to hold "*lenp" bytes of data; it
	 * will actually be slightly larger, as PACKET_OID_DATA has a
	 * 1-byte data array at the end, standing in for the variable-length
	 * data that's actually there.
	 */
	oid_data_arg = FUNC3(sizeof (PACKET_OID_DATA) + *lenp);
	if (oid_data_arg == NULL) {
		FUNC5(p->errbuf, PCAP_ERRBUF_SIZE,
		    "Couldn't allocate argument buffer for PacketRequest");
		return (PCAP_ERROR);
	}

	oid_data_arg->Oid = oid;
	oid_data_arg->Length = (ULONG)(*lenp);	/* XXX - check for ridiculously large value? */
	FUNC4(oid_data_arg->Data, data, *lenp);
	if (!FUNC1(pw->adapter, TRUE, oid_data_arg)) {
		FUNC6(FUNC0(), errbuf);
		FUNC5(p->errbuf, PCAP_ERRBUF_SIZE,
		    "Error calling PacketRequest: %s", errbuf);
		FUNC2(oid_data_arg);
		return (PCAP_ERROR);
	}

	/*
	 * Get the length actually copied.
	 */
	*lenp = oid_data_arg->Length;

	/*
	 * No need to copy the data - we're doing a set.
	 */
	FUNC2(oid_data_arg);
	return (0);
}