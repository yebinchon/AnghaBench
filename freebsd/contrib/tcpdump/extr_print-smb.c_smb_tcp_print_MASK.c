#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* startbuf ; 
 int /*<<< orphan*/  tstr ; 

void
FUNC4(netdissect_options *ndo,
              const u_char * data, int length)
{
    int caplen;
    u_int smb_len;
    const u_char *maxbuf;

    if (length < 4)
	goto trunc;
    if (ndo->ndo_snapend < data)
	goto trunc;
    caplen = ndo->ndo_snapend - data;
    if (caplen < 4)
	goto trunc;
    maxbuf = data + caplen;
    smb_len = FUNC0(data + 1);
    length -= 4;
    caplen -= 4;

    startbuf = data;
    data += 4;

    if (smb_len >= 4 && caplen >= 4 && FUNC2(data,"\377SMB",4) == 0) {
	if ((int)smb_len > caplen) {
	    if ((int)smb_len > length)
		FUNC1((ndo, " WARNING: Packet is continued in later TCP segments\n"));
	    else
		FUNC1((ndo, " WARNING: Short packet. Try increasing the snap length by %d\n",
		    smb_len - caplen));
	} else
	    FUNC1((ndo, " "));
	FUNC3(ndo, data, maxbuf > data + smb_len ? data + smb_len : maxbuf);
    } else
	FUNC1((ndo, " SMB-over-TCP packet:(raw data or continuation?)\n"));
    return;
trunc:
    FUNC1((ndo, "%s", tstr));
}