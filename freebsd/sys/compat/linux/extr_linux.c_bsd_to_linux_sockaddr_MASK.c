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
struct sockaddr {int /*<<< orphan*/  sa_family; } ;
struct l_sockaddr {int sa_family; } ;
typedef  int socklen_t ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int EINVAL ; 
 int /*<<< orphan*/  M_SONAME ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int UCHAR_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sockaddr const*,struct l_sockaddr*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct l_sockaddr*,int /*<<< orphan*/ ) ; 
 struct l_sockaddr* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(const struct sockaddr *sa, struct l_sockaddr **lsa,
    socklen_t len)
{
	struct l_sockaddr *kosa;
	int error, bdom;

	*lsa = NULL;
	if (len < 2 || len > UCHAR_MAX)
		return (EINVAL);

	kosa = FUNC3(len, M_SONAME, M_WAITOK);
	FUNC0(sa, kosa, len);

	bdom = FUNC1(sa->sa_family);
	if (bdom == -1) {
		error = EAFNOSUPPORT;
		goto out;
	}

	kosa->sa_family = bdom;
	*lsa = kosa;
	return (0);

out:
	FUNC2(kosa, M_SONAME);
	return (error);
}