#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sin_len; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct tac_server {int timeout; int flags; int /*<<< orphan*/ * secret; TYPE_1__ addr; } ;
struct tac_handle {size_t num_servers; struct tac_server* servers; } ;
struct hostent {int /*<<< orphan*/  h_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 size_t MAXSERVERS ; 
 int TACPLUS_PORT ; 
 int /*<<< orphan*/  FUNC0 (struct tac_handle*,char*,...) ; 
 struct hostent* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC6 (struct tac_handle*,char const*) ; 

int
FUNC7(struct tac_handle *h, const char *host, int port,
    const char *secret, int timeout, int flags)
{
	struct tac_server *srvp;

	if (h->num_servers >= MAXSERVERS) {
		FUNC0(h, "Too many TACACS+ servers specified");
		return -1;
	}
	srvp = &h->servers[h->num_servers];

	FUNC5(&srvp->addr, 0, sizeof srvp->addr);
	srvp->addr.sin_len = sizeof srvp->addr;
	srvp->addr.sin_family = AF_INET;
	if (!FUNC3(host, &srvp->addr.sin_addr)) {
		struct hostent *hent;

		if ((hent = FUNC1(host)) == NULL) {
			FUNC0(h, "%s: host not found", host);
			return -1;
		}
		FUNC4(&srvp->addr.sin_addr, hent->h_addr,
		    sizeof srvp->addr.sin_addr);
	}
	srvp->addr.sin_port = FUNC2(port != 0 ? port : TACPLUS_PORT);
	if ((srvp->secret = FUNC6(h, secret)) == NULL)
		return -1;
	srvp->timeout = timeout;
	srvp->flags = flags;
	h->num_servers++;
	return 0;
}