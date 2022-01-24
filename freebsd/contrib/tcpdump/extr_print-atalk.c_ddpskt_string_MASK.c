#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ ndo_nflag; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  skt2str ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 char const* FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static const char *
FUNC2(netdissect_options *ndo,
              register int skt)
{
	static char buf[8];

	if (ndo->ndo_nflag) {
		(void)FUNC0(buf, sizeof(buf), "%d", skt);
		return (buf);
	}
	return (FUNC1(skt2str, "%d", skt));
}