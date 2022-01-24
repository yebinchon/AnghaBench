#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_int ;
struct dns_ctx {char* name; int flags; } ;
struct addrinfo {char* ai_canonname; int ai_family; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_addrlen; struct addrinfo* ai_next; } ;
struct TYPE_4__ {int /*<<< orphan*/  addr; struct dns_ctx* dctx; } ;
typedef  TYPE_1__ sent_pkt ;
typedef  int /*<<< orphan*/  SOCKET ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int CTX_UCST ; 
 int EAI_SYSTEM ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (struct addrinfo const*) ; 
 TYPE_1__* FUNC3 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  ipv6_works ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  n_pending_dns ; 
 int /*<<< orphan*/  n_pending_ntp ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct dns_ctx*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  sock4 ; 
 int /*<<< orphan*/  sock6 ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC12(
	int			rescode,
	int			gai_errno,
	void *			context,
	const char *		name,
	const char *		service,
	const struct addrinfo *	hints,
	const struct addrinfo *	addr
	)
{
	struct dns_ctx *	dctx;
	sent_pkt *		spkt;
	const struct addrinfo *	ai;
	SOCKET			sock;
	u_int			xmt_delay_v4;
	u_int			xmt_delay_v6;
	u_int			xmt_delay;
	size_t			octets;

	xmt_delay_v4 = 0;
	xmt_delay_v6 = 0;
	dctx = context;
	if (rescode) {
#ifdef EAI_SYSTEM
		if (EAI_SYSTEM == rescode) {
			errno = gai_errno;
			mfprintf(stderr, "%s lookup error %m\n",
				 dctx->name);
		} else
#endif
			FUNC5(stderr, "%s lookup error %s\n",
				dctx->name, FUNC6(rescode));
	} else {
		FUNC0(3, ("%s [%s]\n", dctx->name,
			  (addr->ai_canonname != NULL)
			      ? addr->ai_canonname
			      : ""));

		for (ai = addr; ai != NULL; ai = ai->ai_next) {

			if (FUNC2(ai))
				continue;

			switch (ai->ai_family) {

			case AF_INET:
				sock = sock4;
				xmt_delay = xmt_delay_v4;
				xmt_delay_v4++;
				break;

			case AF_INET6:
				if (!ipv6_works)
					continue;

				sock = sock6;
				xmt_delay = xmt_delay_v6;
				xmt_delay_v6++;
				break;

			default:
				FUNC10(LOG_ERR, "sntp_name_resolved: unexpected ai_family: %d",
					ai->ai_family);
				FUNC4(1);
				break;
			}

			/*
			** We're waiting for a response for either unicast
			** or broadcast, so...
			*/
			++n_pending_ntp;

			/* If this is for a unicast IP, queue a request */
			if (dctx->flags & CTX_UCST) {
				spkt = FUNC3(sizeof(*spkt));
				spkt->dctx = dctx;
				octets = FUNC9(ai->ai_addrlen, sizeof(spkt->addr));
				FUNC7(&spkt->addr, ai->ai_addr, octets);
				FUNC11(sock, dctx, spkt, xmt_delay);
			}
		}
	}
	/* n_pending_dns really should be >0 here... */
	--n_pending_dns;
	FUNC1();
}