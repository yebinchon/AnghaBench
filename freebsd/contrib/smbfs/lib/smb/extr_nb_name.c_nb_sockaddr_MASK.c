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
struct sockaddr_nb {int /*<<< orphan*/  snb_tran; int /*<<< orphan*/  snb_name; } ;
struct sockaddr {scalar_t__ sa_family; int /*<<< orphan*/  sa_len; } ;
struct nb_name {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_IPX ; 
 int EINVAL ; 
 int EPROTONOSUPPORT ; 
 int NB_ENCNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nb_name*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nb_name*) ; 
 int FUNC3 (int,struct sockaddr_nb**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int
FUNC5(struct sockaddr *peer, struct nb_name *np,
	struct sockaddr_nb **dst)

{
	struct sockaddr_nb *snb;
	int nmlen, error;

	if (peer && (peer->sa_family != AF_INET && peer->sa_family != AF_IPX))
		return EPROTONOSUPPORT;
	nmlen = FUNC2(np);
	if (nmlen < NB_ENCNAMELEN)
		return EINVAL;
	error = FUNC3(nmlen, &snb);
	if (error)
		return error;
	if (nmlen != FUNC1(np, snb->snb_name))
		FUNC4("a bug somewhere in the nb_name* code\n");
	if (peer)
		FUNC0(&snb->snb_tran, peer, peer->sa_len);
	*dst = snb;
	return 0;
}