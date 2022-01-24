#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_8__ {int sin_len; struct in_addr sin_addr; scalar_t__ sin_family; } ;
struct TYPE_7__ {scalar_t__ ss_family; } ;
struct TYPE_9__ {TYPE_2__ sin; TYPE_1__ ss; } ;
typedef  TYPE_3__ sockunion_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 int /*<<< orphan*/  EADDRNOTAVAIL ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_3__* FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int,scalar_t__,struct sockaddr*,int,scalar_t__*,scalar_t__*,struct sockaddr_storage*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(int s, struct in_addr interface, struct in_addr group,
    uint32_t *fmode, uint32_t *numsrc, struct in_addr *slist)
{
	sockunion_t	*psu, *tmpslist;
	sockunion_t	 tmpgroup;
	struct in_addr	*pina;
	int		 err;
	size_t		 i;
	uint32_t	 ifindex, onumsrc;

	FUNC3(s != -1);
	FUNC3(fmode != NULL);
	FUNC3(numsrc != NULL);

	onumsrc = *numsrc;
	*numsrc = 0;
	tmpslist = NULL;

	if (!FUNC0(FUNC8(group.s_addr)) ||
	    (onumsrc != 0 && slist == NULL)) {
		errno = EINVAL;
		return (-1);
	}

	ifindex = FUNC2(interface.s_addr);
	if (ifindex == 0) {
		errno = EADDRNOTAVAIL;
		return (-1);
	}

	FUNC7(&tmpgroup, 0, sizeof(sockunion_t));
	tmpgroup.sin.sin_family = AF_INET;
	tmpgroup.sin.sin_len = sizeof(struct sockaddr_in);
	tmpgroup.sin.sin_addr = group;

	if (onumsrc != 0 || slist != NULL) {
		tmpslist = FUNC4(onumsrc, sizeof(sockunion_t));
		if (tmpslist == NULL) {
			errno = ENOMEM;
			return (-1);
		}
	}

	err = FUNC6(s, ifindex, (struct sockaddr *)&tmpgroup,
	    sizeof(struct sockaddr_in), fmode, numsrc,
	    (struct sockaddr_storage *)tmpslist);

	if (tmpslist != NULL && *numsrc != 0) {
		pina = slist;
		psu = tmpslist;
		for (i = 0; i < FUNC1(onumsrc, *numsrc); i++, psu++) {
			if (psu->ss.ss_family != AF_INET)
				continue;
			*pina++ = psu->sin.sin_addr;
		}
		FUNC5(tmpslist);
	}

	return (err);
}