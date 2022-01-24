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
typedef  int /*<<< orphan*/  const u_char ;
struct TYPE_6__ {int ndo_vflag; int /*<<< orphan*/  const* ndo_snapend; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,char*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* startbuf ; 

void
FUNC4(netdissect_options *ndo,
                 const u_char *data, int length)
{
    const u_char *maxbuf = data + length;

    if (maxbuf > ndo->ndo_snapend)
	maxbuf = ndo->ndo_snapend;
    if (maxbuf <= data)
	return;
    startbuf = data;

    if (ndo->ndo_vflag < 2) {
	FUNC0((ndo, "NBT UDP PACKET(138)"));
	return;
    }

    data = FUNC3(ndo, data,
	"\n>>> NBT UDP PACKET(138) Res=[rw] ID=[rw] IP=[b.b.b.b] Port=[rd] Length=[rd] Res2=[rw]\nSourceName=[n1]\nDestName=[n1]\n#",
	maxbuf, 0);

    if (data != NULL) {
	/* If there isn't enough data for "\377SMB", don't check for it. */
	if (&data[3] >= maxbuf)
	    goto out;

	if (FUNC1(data, "\377SMB",4) == 0)
	    FUNC2(ndo, data, maxbuf);
    }
out:
    FUNC0((ndo, "\n"));
}