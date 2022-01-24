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
struct hardware {size_t hlen; int /*<<< orphan*/ * haddr; int /*<<< orphan*/  htype; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  COLON ; 
#define  ETHERNET 130 
#define  FDDI 129 
 int /*<<< orphan*/  HTYPE_ETHER ; 
 int /*<<< orphan*/  HTYPE_FDDI ; 
 int /*<<< orphan*/  HTYPE_IEEE802 ; 
 int SEMI ; 
#define  TOKEN_RING 128 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char**,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(FILE *cfile, struct hardware *hardware)
{
	unsigned char *t;
	int token;
	size_t hlen;
	char *val;

	token = FUNC3(&val, cfile);
	switch (token) {
	case ETHERNET:
		hardware->htype = HTYPE_ETHER;
		break;
	case TOKEN_RING:
		hardware->htype = HTYPE_IEEE802;
		break;
	case FDDI:
		hardware->htype = HTYPE_FDDI;
		break;
	default:
		FUNC5("expecting a network hardware type");
		FUNC6(cfile);
		return;
	}

	/*
	 * Parse the hardware address information.   Technically, it
	 * would make a lot of sense to restrict the length of the data
	 * we'll accept here to the length of a particular hardware
	 * address type.   Unfortunately, there are some broken clients
	 * out there that put bogus data in the chaddr buffer, and we
	 * accept that data in the lease file rather than simply failing
	 * on such clients.   Yuck.
	 */
	hlen = 0;
	t = FUNC4(cfile, NULL, &hlen, COLON, 16, 8);
	if (!t)
		return;
	if (hlen > sizeof(hardware->haddr)) {
		FUNC0(t);
		FUNC5("hardware address too long");
	} else {
		hardware->hlen = hlen;
		FUNC1((unsigned char *)&hardware->haddr[0], t,
		    hardware->hlen);
		if (hlen < sizeof(hardware->haddr))
			FUNC2(&hardware->haddr[hlen], 0,
			    sizeof(hardware->haddr) - hlen);
		FUNC0(t);
	}

	token = FUNC3(&val, cfile);
	if (token != SEMI) {
		FUNC5("expecting semicolon.");
		FUNC6(cfile);
	}
}