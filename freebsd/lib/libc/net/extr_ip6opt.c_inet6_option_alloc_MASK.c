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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ip6_ext {int ip6e_len; } ;
struct cmsghdr {int cmsg_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int,int) ; 

u_int8_t *
FUNC3(struct cmsghdr *cmsg, int datalen, int multx, int plusy)
{
	int padlen, off;
	u_int8_t *bp = (u_char *)cmsg + cmsg->cmsg_len;
	u_int8_t *retval;
	struct ip6_ext *eh = (struct ip6_ext *)FUNC0(cmsg);

	/* argument validation */
	if (multx != 1 && multx != 2 && multx != 4 && multx != 8)
		return(NULL);
	if (plusy < 0 || plusy > 7)
		return(NULL);

	/*
	 * If this is the first option, allocate space for the
	 * first 2 bytes(for next header and length fields) of
	 * the option header.
	 */
	if (bp == (u_char *)eh) {
		bp += 2;
		cmsg->cmsg_len += 2;
	}

	/* calculate pad length before the option. */
	off = bp - (u_char *)eh;
	padlen = FUNC2(off % multx, multx) - (off % multx);
	padlen += plusy;
	padlen %= multx;	/* keep the pad as short as possible */
	/* insert padding */
	FUNC1(bp, padlen);
	cmsg->cmsg_len += padlen;
	bp += padlen;

	/* keep space to store specified length of data */
	retval = bp;
	bp += datalen;
	cmsg->cmsg_len += datalen;

	/* calculate pad length after the option and insert the padding */
	off = bp - (u_char *)eh;
	padlen = ((off + 7) & ~7) - off;
	FUNC1(bp, padlen);
	bp += padlen;
	cmsg->cmsg_len += padlen;

	/* update the length field of the ip6 option header */
	eh->ip6e_len = ((bp - (u_char *)eh) >> 3) - 1;

	return(retval);
}