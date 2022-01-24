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
struct TYPE_6__ {int ndo_vflag; } ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
#define  IPCPOPT_2ADDR 137 
#define  IPCPOPT_ADDR 136 
#define  IPCPOPT_IPCOMP 135 
#define  IPCPOPT_IPCOMP_HDRCOMP 134 
 int IPCPOPT_IPCOMP_MINLEN ; 
#define  IPCPOPT_MOBILE4 133 
#define  IPCPOPT_PRIDNS 132 
#define  IPCPOPT_PRINBNS 131 
#define  IPCPOPT_SECDNS 130 
#define  IPCPOPT_SECNBNS 129 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
#define  PPP_VJC 128 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int const*) ; 
 int /*<<< orphan*/  ipcpopt_compproto_subopt_values ; 
 int /*<<< orphan*/  ipcpopt_compproto_values ; 
 int /*<<< orphan*/  ipcpopt_values ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(netdissect_options *ndo,
                          const u_char *p, int length)
{
	int len, opt;
        u_int compproto, ipcomp_subopttotallen, ipcomp_subopt, ipcomp_suboptlen;

	if (length < 2)
		return 0;
	FUNC2(*p, 2);
	len = p[1];
	opt = p[0];
	if (length < len)
		return 0;
	if (len < 2) {
		FUNC1((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
		       FUNC6(ipcpopt_values,"unknown",opt),
		       opt,
		       len));
		return 0;
	}

	FUNC1((ndo, "\n\t  %s Option (0x%02x), length %u",
	       FUNC6(ipcpopt_values,"unknown",opt),
	       opt,
	       len));

	switch (opt) {
	case IPCPOPT_2ADDR:		/* deprecated */
		if (len != 10) {
			FUNC1((ndo, " (length bogus, should be = 10)"));
			return len;
		}
		FUNC2(*(p + 6), 4);
		FUNC1((ndo, ": src %s, dst %s",
		       FUNC4(ndo, p + 2),
		       FUNC4(ndo, p + 6)));
		break;
	case IPCPOPT_IPCOMP:
		if (len < 4) {
			FUNC1((ndo, " (length bogus, should be >= 4)"));
			return 0;
		}
		FUNC3(p+2);
		compproto = FUNC0(p+2);

		FUNC1((ndo, ": %s (0x%02x):",
		          FUNC6(ipcpopt_compproto_values, "Unknown", compproto),
		          compproto));

		switch (compproto) {
                case PPP_VJC:
			/* XXX: VJ-Comp parameters should be decoded */
                        break;
                case IPCPOPT_IPCOMP_HDRCOMP:
                        if (len < IPCPOPT_IPCOMP_MINLEN) {
                        	FUNC1((ndo, " (length bogus, should be >= %u)",
                        		IPCPOPT_IPCOMP_MINLEN));
                        	return 0;
                        }

                        FUNC2(*(p + 2), IPCPOPT_IPCOMP_MINLEN);
                        FUNC1((ndo, "\n\t    TCP Space %u, non-TCP Space %u" \
                               ", maxPeriod %u, maxTime %u, maxHdr %u",
                               FUNC0(p+4),
                               FUNC0(p+6),
                               FUNC0(p+8),
                               FUNC0(p+10),
                               FUNC0(p+12)));

                        /* suboptions present ? */
                        if (len > IPCPOPT_IPCOMP_MINLEN) {
                                ipcomp_subopttotallen = len - IPCPOPT_IPCOMP_MINLEN;
                                p += IPCPOPT_IPCOMP_MINLEN;

                                FUNC1((ndo, "\n\t      Suboptions, length %u", ipcomp_subopttotallen));

                                while (ipcomp_subopttotallen >= 2) {
                                        FUNC2(*p, 2);
                                        ipcomp_subopt = *p;
                                        ipcomp_suboptlen = *(p+1);

                                        /* sanity check */
                                        if (ipcomp_subopt == 0 ||
                                            ipcomp_suboptlen == 0 )
                                                break;

                                        /* XXX: just display the suboptions for now */
                                        FUNC1((ndo, "\n\t\t%s Suboption #%u, length %u",
                                               FUNC6(ipcpopt_compproto_subopt_values,
                                                       "Unknown",
                                                       ipcomp_subopt),
                                               ipcomp_subopt,
                                               ipcomp_suboptlen));

                                        ipcomp_subopttotallen -= ipcomp_suboptlen;
                                        p += ipcomp_suboptlen;
                                }
                        }
                        break;
                default:
                        break;
		}
		break;

	case IPCPOPT_ADDR:     /* those options share the same format - fall through */
	case IPCPOPT_MOBILE4:
	case IPCPOPT_PRIDNS:
	case IPCPOPT_PRINBNS:
	case IPCPOPT_SECDNS:
	case IPCPOPT_SECNBNS:
		if (len != 6) {
			FUNC1((ndo, " (length bogus, should be = 6)"));
			return 0;
		}
		FUNC2(*(p + 2), 4);
		FUNC1((ndo, ": %s", FUNC4(ndo, p + 2)));
		break;
	default:
		/*
		 * Unknown option; dump it as raw bytes now if we're
		 * not going to do so below.
		 */
		if (ndo->ndo_vflag < 2)
			FUNC5(ndo, &p[2], "\n\t    ", len - 2);
		break;
	}
	if (ndo->ndo_vflag > 1)
		FUNC5(ndo, &p[2], "\n\t    ", len - 2); /* exclude TLV header */
	return len;

trunc:
	FUNC1((ndo, "[|ipcp]"));
	return 0;
}