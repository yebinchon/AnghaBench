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
struct nfhret {int vers; long fhsize; int auth; scalar_t__ stat; int /*<<< orphan*/  nfh; } ;
typedef  int /*<<< orphan*/  caddr_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int AUTH_SYS ; 
 scalar_t__ EAUTH ; 
 long NFS3_FHSIZE ; 
 long NFS_FHSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3(XDR *xdrsp, struct nfhret *np)
{
	int i;
	long auth, authcnt, authfnd = 0;

	if (!FUNC2(xdrsp, &np->stat))
		return (0);
	if (np->stat)
		return (1);
	switch (np->vers) {
	case 1:
		np->fhsize = NFS_FHSIZE;
		return (FUNC1(xdrsp, (caddr_t)np->nfh, NFS_FHSIZE));
	case 3:
		if (!FUNC0(xdrsp, &np->fhsize))
			return (0);
		if (np->fhsize <= 0 || np->fhsize > NFS3_FHSIZE)
			return (0);
		if (!FUNC1(xdrsp, (caddr_t)np->nfh, np->fhsize))
			return (0);
		if (!FUNC0(xdrsp, &authcnt))
			return (0);
		for (i = 0; i < authcnt; i++) {
			if (!FUNC0(xdrsp, &auth))
				return (0);
			if (np->auth == -1) {
				np->auth = auth;
				authfnd++;
			} else if (auth == np->auth) {
				authfnd++;
			}
		}
		/*
		 * Some servers, such as DEC's OSF/1 return a nil authenticator
		 * list to indicate RPCAUTH_UNIX.
		 */
		if (authcnt == 0 && np->auth == -1)
			np->auth = AUTH_SYS;
		if (!authfnd && (authcnt > 0 || np->auth != AUTH_SYS))
			np->stat = EAUTH;
		return (1);
	}
	return (0);
}