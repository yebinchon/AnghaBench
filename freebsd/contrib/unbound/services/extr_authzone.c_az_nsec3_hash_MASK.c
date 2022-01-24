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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  p ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ N3HASHBUFLEN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*,size_t,unsigned char*) ; 

__attribute__((used)) static size_t
FUNC4(uint8_t* buf, size_t buflen, uint8_t* nm, size_t nmlen,
	int algo, size_t iter, uint8_t* salt, size_t saltlen)
{
	size_t hlen = FUNC1(algo);
	/* buffer has domain name, nsec3hash, and 256 is for max saltlen
	 * (salt has 0-255 length) */
	unsigned char p[LDNS_MAX_DOMAINLEN+1+N3HASHBUFLEN+256];
	size_t i;
	if(nmlen+saltlen > sizeof(p) || hlen+saltlen > sizeof(p))
		return 0;
	if(hlen > buflen)
		return 0; /* somehow too large for destination buffer */
	/* hashfunc(name, salt) */
	FUNC0(p, nm, nmlen);
	FUNC2(p);
	FUNC0(p+nmlen, salt, saltlen);
	(void)FUNC3(algo, p, nmlen+saltlen, (unsigned char*)buf);
	for(i=0; i<iter; i++) {
		/* hashfunc(hash, salt) */
		FUNC0(p, buf, hlen);
		FUNC0(p+hlen, salt, saltlen);
		(void)FUNC3(algo, p, hlen+saltlen,
			(unsigned char*)buf);
	}
	return hlen;
}