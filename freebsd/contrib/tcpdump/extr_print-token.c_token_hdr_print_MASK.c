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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct token_header {int /*<<< orphan*/  token_fc; int /*<<< orphan*/  token_ac; } ;
struct TYPE_5__ {int /*<<< orphan*/  ndo_qflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static inline void
FUNC2(netdissect_options *ndo,
                register const struct token_header *trp, register u_int length,
                register const u_char *fsrc, register const u_char *fdst)
{
	const char *srcname, *dstname;

	srcname = FUNC1(ndo, fsrc);
	dstname = FUNC1(ndo, fdst);

	if (!ndo->ndo_qflag)
		FUNC0((ndo, "%02x %02x ",
		       trp->token_ac,
		       trp->token_fc));
	FUNC0((ndo, "%s > %s, length %u: ",
	       srcname, dstname,
	       length));
}