#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct TYPE_6__ {int const* ndo_snapend; int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const*,int const*) ; 
 int* FUNC4 (TYPE_1__*,int const*,char*,int const*,int /*<<< orphan*/ ) ; 
 int const* startbuf ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC5(netdissect_options *ndo,
              const u_char *data, int length)
{
    int caplen;
    int type;
    u_int nbt_len;
    const u_char *maxbuf;

    if (length < 4)
	goto trunc;
    if (ndo->ndo_snapend < data)
	goto trunc;
    caplen = ndo->ndo_snapend - data;
    if (caplen < 4)
	goto trunc;
    maxbuf = data + caplen;
    type = data[0];
    nbt_len = FUNC0(data + 2);
    length -= 4;
    caplen -= 4;

    startbuf = data;

    if (ndo->ndo_vflag < 2) {
	FUNC1((ndo, " NBT Session Packet: "));
	switch (type) {
	case 0x00:
	    FUNC1((ndo, "Session Message"));
	    break;

	case 0x81:
	    FUNC1((ndo, "Session Request"));
	    break;

	case 0x82:
	    FUNC1((ndo, "Session Granted"));
	    break;

	case 0x83:
	  {
	    int ecode;

	    if (nbt_len < 4)
		goto trunc;
	    if (length < 4)
		goto trunc;
	    if (caplen < 4)
		goto trunc;
	    ecode = data[4];

	    FUNC1((ndo, "Session Reject, "));
	    switch (ecode) {
	    case 0x80:
		FUNC1((ndo, "Not listening on called name"));
		break;
	    case 0x81:
		FUNC1((ndo, "Not listening for calling name"));
		break;
	    case 0x82:
		FUNC1((ndo, "Called name not present"));
		break;
	    case 0x83:
		FUNC1((ndo, "Called name present, but insufficient resources"));
		break;
	    default:
		FUNC1((ndo, "Unspecified error 0x%X", ecode));
		break;
	    }
	  }
	    break;

	case 0x85:
	    FUNC1((ndo, "Session Keepalive"));
	    break;

	default:
	    data = FUNC4(ndo, data, "Unknown packet type [rB]", maxbuf, 0);
	    break;
	}
    } else {
	FUNC1((ndo, "\n>>> NBT Session Packet\n"));
	switch (type) {
	case 0x00:
	    data = FUNC4(ndo, data, "[P1]NBT Session Message\nFlags=[B]\nLength=[rd]\n",
		data + 4, 0);
	    if (data == NULL)
		break;
	    if (nbt_len >= 4 && caplen >= 4 && FUNC2(data,"\377SMB",4) == 0) {
		if ((int)nbt_len > caplen) {
		    if ((int)nbt_len > length)
			FUNC1((ndo, "WARNING: Packet is continued in later TCP segments\n"));
		    else
			FUNC1((ndo, "WARNING: Short packet. Try increasing the snap length by %d\n",
			    nbt_len - caplen));
		}
		FUNC3(ndo, data, maxbuf > data + nbt_len ? data + nbt_len : maxbuf);
	    } else
		FUNC1((ndo, "Session packet:(raw data or continuation?)\n"));
	    break;

	case 0x81:
	    data = FUNC4(ndo, data,
		"[P1]NBT Session Request\nFlags=[B]\nLength=[rd]\nDestination=[n1]\nSource=[n1]\n",
		maxbuf, 0);
	    break;

	case 0x82:
	    data = FUNC4(ndo, data, "[P1]NBT Session Granted\nFlags=[B]\nLength=[rd]\n", maxbuf, 0);
	    break;

	case 0x83:
	  {
	    const u_char *origdata;
	    int ecode;

	    origdata = data;
	    data = FUNC4(ndo, data, "[P1]NBT SessionReject\nFlags=[B]\nLength=[rd]\nReason=[B]\n",
		maxbuf, 0);
	    if (data == NULL)
		break;
	    if (nbt_len >= 1 && caplen >= 1) {
		ecode = origdata[4];
		switch (ecode) {
		case 0x80:
		    FUNC1((ndo, "Not listening on called name\n"));
		    break;
		case 0x81:
		    FUNC1((ndo, "Not listening for calling name\n"));
		    break;
		case 0x82:
		    FUNC1((ndo, "Called name not present\n"));
		    break;
		case 0x83:
		    FUNC1((ndo, "Called name present, but insufficient resources\n"));
		    break;
		default:
		    FUNC1((ndo, "Unspecified error 0x%X\n", ecode));
		    break;
		}
	    }
	  }
	    break;

	case 0x85:
	    data = FUNC4(ndo, data, "[P1]NBT Session Keepalive\nFlags=[B]\nLength=[rd]\n", maxbuf, 0);
	    break;

	default:
	    data = FUNC4(ndo, data, "NBT - Unknown packet type\nType=[B]\n", maxbuf, 0);
	    break;
	}
	FUNC1((ndo, "\n"));
    }
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}