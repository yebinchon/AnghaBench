#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct isakmp {int vers; int /*<<< orphan*/  r_ck; int /*<<< orphan*/  i_ck; int /*<<< orphan*/  msgid; } ;
struct TYPE_8__ {int ndo_vflag; int /*<<< orphan*/ * ndo_snapend; scalar_t__ ndo_espsecret; int /*<<< orphan*/ * ndo_sa_list_head; } ;
typedef  TYPE_1__ netdissect_options ;
typedef  int /*<<< orphan*/  base ;

/* Variables and functions */
#define  IKEv1_MAJOR_VERSION 129 
#define  IKEv2_MAJOR_VERSION 128 
 int ISAKMP_VERS_MAJOR ; 
 int ISAKMP_VERS_MAJOR_SHIFT ; 
 int ISAKMP_VERS_MINOR ; 
 int ISAKMP_VERS_MINOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct isakmp*,struct isakmp const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct isakmp*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,struct isakmp*) ; 

void
FUNC6(netdissect_options *ndo,
	     const u_char *bp, u_int length,
	     const u_char *bp2)
{
	const struct isakmp *p;
	struct isakmp base;
	const u_char *ep;
	int major, minor;

#ifdef HAVE_LIBCRYPTO
	/* initialize SAs */
	if (ndo->ndo_sa_list_head == NULL) {
		if (ndo->ndo_espsecret)
			esp_print_decodesecret(ndo);
	}
#endif

	p = (const struct isakmp *)bp;
	ep = ndo->ndo_snapend;

	if ((const struct isakmp *)ep < p + 1) {
		FUNC0((ndo,"[|isakmp]"));
		return;
	}

	FUNC1(&base, p, sizeof(base));

	FUNC0((ndo,"isakmp"));
	major = (base.vers & ISAKMP_VERS_MAJOR)
		>> ISAKMP_VERS_MAJOR_SHIFT;
	minor = (base.vers & ISAKMP_VERS_MINOR)
		>> ISAKMP_VERS_MINOR_SHIFT;

	if (ndo->ndo_vflag) {
		FUNC0((ndo," %d.%d", major, minor));
	}

	if (ndo->ndo_vflag) {
		FUNC0((ndo," msgid "));
		FUNC3(ndo, (const uint8_t *)&base.msgid, sizeof(base.msgid));
	}

	if (1 < ndo->ndo_vflag) {
		FUNC0((ndo," cookie "));
		FUNC3(ndo, (const uint8_t *)&base.i_ck, sizeof(base.i_ck));
		FUNC0((ndo,"->"));
		FUNC3(ndo, (const uint8_t *)&base.r_ck, sizeof(base.r_ck));
	}
	FUNC0((ndo,":"));

	switch(major) {
	case IKEv1_MAJOR_VERSION:
		FUNC4(ndo, bp, length, bp2, &base);
		break;

	case IKEv2_MAJOR_VERSION:
		FUNC5(ndo, bp, length, bp2, &base);
		break;
	}
}