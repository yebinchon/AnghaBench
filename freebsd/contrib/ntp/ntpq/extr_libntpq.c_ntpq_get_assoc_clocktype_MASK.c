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
typedef  int /*<<< orphan*/  sockaddr_u ;
typedef  int /*<<< orphan*/  resultbuf ;
typedef  int /*<<< orphan*/  dstadr ;
typedef  scalar_t__ associd_t ;
struct TYPE_2__ {scalar_t__ assid; } ;

/* Variables and functions */
 int LENHOSTNAME ; 
 int NTPQ_BUFLEN ; 
 TYPE_1__* assoc_cache ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int,char*,char*,int) ; 
 int FUNC4 (scalar_t__,char*,int) ; 
 int numassoc ; 
 scalar_t__ peervar_assoc ; 

int
FUNC5(
	int assoc_index
	)
{
	associd_t	associd;
	int		i;
	int		rc;
	sockaddr_u	dum_store;
	char		dstadr[LENHOSTNAME];
	char		resultbuf[NTPQ_BUFLEN];

	if (assoc_index < 0 || assoc_index >= numassoc)
		return -1;

	associd = assoc_cache[assoc_index].assid;
	if (associd == peervar_assoc) {
		rc = FUNC2("dstadr", dstadr, sizeof(dstadr));
	} else {
		i = FUNC4(associd, resultbuf,
					     sizeof(resultbuf));
		if (i <= 0)
			return -1;
		rc = FUNC3(resultbuf, i, "dstadr", dstadr,
				 sizeof(dstadr));
	}

	if (0 != rc && FUNC0(dstadr, &dum_store))
		return FUNC1(&dum_store);

	return -1;
}