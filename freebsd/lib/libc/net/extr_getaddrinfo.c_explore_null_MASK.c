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
struct afd {int /*<<< orphan*/  a_loopback; int /*<<< orphan*/  a_addrany; } ;
struct addrinfo {scalar_t__ ai_family; int ai_flags; } ;

/* Variables and functions */
 int AI_PASSIVE ; 
 scalar_t__ EMFILE ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*,struct afd const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*,char const*) ; 
 scalar_t__ PF_LOCAL ; 
 int SOCK_CLOEXEC ; 
 int SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 struct afd* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 

__attribute__((used)) static int
FUNC6(const struct addrinfo *pai, const char *servname,
    struct addrinfo **res)
{
	int s;
	const struct afd *afd;
	struct addrinfo *ai;
	int error;

	*res = NULL;
	ai = NULL;

	if (pai->ai_family == PF_LOCAL)
		return (0);

	/*
	 * filter out AFs that are not supported by the kernel
	 * XXX errno?
	 */
	s = FUNC3(pai->ai_family, SOCK_DGRAM | SOCK_CLOEXEC, 0);
	if (s < 0) {
		if (errno != EMFILE)
			return 0;
	} else
		FUNC2(s);

	afd = FUNC4(pai->ai_family);
	if (afd == NULL)
		return 0;

	if (pai->ai_flags & AI_PASSIVE) {
		FUNC0(ai, afd, afd->a_addrany);
		FUNC1(ai, servname);
	} else {
		FUNC0(ai, afd, afd->a_loopback);
		FUNC1(ai, servname);
	}

	*res = ai;
	return 0;

free:
	if (ai != NULL)
		FUNC5(ai);
	return error;
}