#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sflow_counter_record_t {int /*<<< orphan*/  length; int /*<<< orphan*/  format; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct sflow_counter_record_t const) ; 
#define  SFLOW_COUNTER_BASEVG 133 
#define  SFLOW_COUNTER_ETHERNET 132 
#define  SFLOW_COUNTER_GENERIC 131 
#define  SFLOW_COUNTER_PROCESSOR 130 
#define  SFLOW_COUNTER_TOKEN_RING 129 
#define  SFLOW_COUNTER_VLAN 128 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/  const*,char*,scalar_t__) ; 
 int /*<<< orphan*/  sflow_counter_type_values ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC11(netdissect_options *ndo,
                            const u_char *pointer, u_int len, u_int records)
{
    u_int nrecords;
    const u_char *tptr;
    u_int tlen;
    u_int counter_type;
    u_int counter_len;
    u_int enterprise;
    const struct sflow_counter_record_t *sflow_counter_record;

    nrecords = records;
    tptr = pointer;
    tlen = len;

    while (nrecords > 0) {
	/* do we have the "header?" */
	if (tlen < sizeof(struct sflow_counter_record_t))
	    return 1;
	sflow_counter_record = (const struct sflow_counter_record_t *)tptr;
	FUNC2(*sflow_counter_record);

	enterprise = FUNC0(sflow_counter_record->format);
	counter_type = enterprise & 0x0FFF;
	enterprise = enterprise >> 20;
	counter_len  = FUNC0(sflow_counter_record->length);
	FUNC1((ndo, "\n\t    enterprise %u, %s (%u) length %u",
	       enterprise,
	       (enterprise == 0) ? FUNC10(sflow_counter_type_values,"Unknown",counter_type) : "Unknown",
	       counter_type,
	       counter_len));

	tptr += sizeof(struct sflow_counter_record_t);
	tlen -= sizeof(struct sflow_counter_record_t);

	if (tlen < counter_len)
	    return 1;
	if (enterprise == 0) {
	    switch (counter_type) {
	    case SFLOW_COUNTER_GENERIC:
		if (FUNC5(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_COUNTER_ETHERNET:
		if (FUNC4(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_COUNTER_TOKEN_RING:
		if (FUNC7(ndo, tptr,tlen))
		    return 1;
		break;
	    case SFLOW_COUNTER_BASEVG:
		if (FUNC3(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_COUNTER_VLAN:
		if (FUNC8(ndo, tptr, tlen))
		    return 1;
		break;
	    case SFLOW_COUNTER_PROCESSOR:
		if (FUNC6(ndo, tptr, tlen))
		    return 1;
		break;
	    default:
		if (ndo->ndo_vflag <= 1)
		    FUNC9(ndo, tptr, "\n\t\t", counter_len);
		break;
	    }
	}
	tptr += counter_len;
	tlen -= counter_len;
	nrecords--;

    }

    return 0;

trunc:
    return 1;
}