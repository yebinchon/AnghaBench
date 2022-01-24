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
typedef  int /*<<< orphan*/  const u_char ;
struct TYPE_6__ {int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* startbuf ; 

void
FUNC4(netdissect_options *ndo,
                  const u_char *data, u_int length)
{
    /*
     * this is a hack till I work out how to parse the rest of the
     * NetBIOS-over-IPX stuff
     */
    int i;
    const u_char *maxbuf;

    maxbuf = data + length;
    /* Don't go past the end of the captured data in the packet. */
    if (maxbuf > ndo->ndo_snapend)
	maxbuf = ndo->ndo_snapend;
    startbuf = data;
    for (i = 0; i < 128; i++) {
	if (&data[i + 4] > maxbuf)
	    break;
	if (FUNC1(&data[i], "\377SMB", 4) == 0) {
	    FUNC3(ndo, data, "\n>>> IPX transport ", &data[i], 0);
	    FUNC2(ndo, &data[i], maxbuf);
	    FUNC0((ndo, "\n"));
	    break;
	}
    }
    if (i == 128)
	FUNC3(ndo, data, "\n>>> Unknown IPX ", maxbuf, 0);
}