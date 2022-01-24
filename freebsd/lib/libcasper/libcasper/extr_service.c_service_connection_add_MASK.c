#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct service_connection {int /*<<< orphan*/  sc_magic; int /*<<< orphan*/ * sc_chan; int /*<<< orphan*/ * sc_limits; } ;
struct service {scalar_t__ s_magic; int /*<<< orphan*/  s_connections; } ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  SERVICE_CONNECTION_MAGIC ; 
 scalar_t__ SERVICE_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct service_connection*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC4 (struct service_connection*) ; 
 struct service_connection* FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  sc_next ; 
 int /*<<< orphan*/  FUNC7 (struct service*) ; 

struct service_connection *
FUNC8(struct service *service, int sock,
    const nvlist_t *limits)
{
	struct service_connection *sconn;
	int serrno;

	FUNC1(service->s_magic == SERVICE_MAGIC);

	sconn = FUNC5(sizeof(*sconn));
	if (sconn == NULL)
		return (NULL);
	sconn->sc_chan = FUNC3(sock,
	    FUNC7(service));
	if (sconn->sc_chan == NULL) {
		serrno = errno;
		FUNC4(sconn);
		errno = serrno;
		return (NULL);
	}
	if (limits == NULL) {
		sconn->sc_limits = NULL;
	} else {
		sconn->sc_limits = FUNC6(limits);
		if (sconn->sc_limits == NULL) {
			serrno = errno;
			(void)FUNC2(sconn->sc_chan, NULL);
			FUNC4(sconn);
			errno = serrno;
			return (NULL);
		}
	}
	sconn->sc_magic = SERVICE_CONNECTION_MAGIC;
	FUNC0(&service->s_connections, sconn, sc_next);
	return (sconn);
}