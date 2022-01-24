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
struct aslookup {scalar_t__ as_debug; scalar_t__ as_f; } ;
typedef  scalar_t__ sa_family_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 

unsigned int
FUNC6(void *_asn, char *addr, sa_family_t family)
{
	struct aslookup *asn = _asn;
	char buf[1024];
	unsigned int as;
	int rc, dlen, plen;

	as = 0;
	rc = dlen = 0;
	plen = (family == AF_INET6) ? 128 : 32;
	(void)FUNC2(asn->as_f, "!r%s/%d,l\n", addr, plen);
	(void)FUNC0(asn->as_f);

#ifdef AS_DEBUG_FILE
	if (asn->as_debug) {
		(void)fprintf(asn->as_debug, ">> !r%s/%d,l\n", addr, plen);
		(void)fflush(asn->as_debug);
	}
#endif /* AS_DEBUG_FILE */

	while (FUNC1(buf, sizeof(buf), asn->as_f) != NULL) {
		buf[sizeof(buf) - 1] = '\0';

#ifdef AS_DEBUG_FILE
		if (asn->as_debug) {
			(void)fprintf(asn->as_debug, "<< %s", buf);
			(void)fflush(asn->as_debug);
		}
#endif /* AS_DEBUG_FILE */

		if (rc == 0) {
			rc = buf[0];
			switch (rc) {
			    case 'A':
				/* A - followed by # bytes of answer */
				FUNC3(buf, "A%d\n", &dlen);
#ifdef AS_DEBUG_FILE
				if (asn->as_debug) {
					(void)fprintf(asn->as_debug,
					     "dlen: %d\n", dlen);
					(void)fflush(asn->as_debug);
				}
#endif /* AS_DEBUG_FILE */
				break;
			    case 'C':
			    case 'D':
			    case 'E':
			    case 'F':
				/* C - no data returned */
				/* D - key not found */
				/* E - multiple copies of key */
				/* F - some other error */
				break;
			}
			if (rc == 'A')
				/* skip to next input line */
				continue;
		}

		if (dlen == 0)
			/* out of data, next char read is end code */
			rc = buf[0];
		if (rc != 'A')
			/* either an error off the bat, or a done code */
			break;

		/* data received, thank you */
		dlen -= FUNC4(buf);

		/* origin line is the interesting bit */
		if (as == 0 && FUNC5(buf, "origin:", 7) == 0) {
			FUNC3(buf + 7, " AS%u", &as);
#ifdef AS_DEBUG_FILE
			if (asn->as_debug) {
				(void)fprintf(asn->as_debug, "as: %d\n", as);
				(void)fflush(asn->as_debug);
			}
#endif /* AS_DEBUG_FILE */
		}
	}

	return (as);
}