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
typedef  int u_int8_t ;
typedef  int /*<<< orphan*/  u_char ;
struct ip6_ext {int ip6e_len; } ;
struct cmsghdr {int cmsg_len; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 int const IP6OPT_PAD1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC3 (int,int) ; 

int
FUNC4(struct cmsghdr *cmsg, const u_int8_t *typep, int multx,
    int plusy)
{
	int padlen, optlen, off;
	u_char *bp = (u_char *)cmsg + cmsg->cmsg_len;
	struct ip6_ext *eh = (struct ip6_ext *)FUNC0(cmsg);

	/* argument validation */
	if (multx != 1 && multx != 2 && multx != 4 && multx != 8)
		return(-1);
	if (plusy < 0 || plusy > 7)
		return(-1);

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
	padlen = FUNC3(off % multx, multx) - (off % multx);
	padlen += plusy;
	padlen %= multx;	/* keep the pad as short as possible */
	/* insert padding */
	FUNC1(bp, padlen);
	cmsg->cmsg_len += padlen;
	bp += padlen;

	/* copy the option */
	if (typep[0] == IP6OPT_PAD1)
		optlen = 1;
	else
		optlen = typep[1] + 2;
	FUNC2(bp, typep, optlen);
	bp += optlen;
	cmsg->cmsg_len += optlen;

	/* calculate pad length after the option and insert the padding */
	off = bp - (u_char *)eh;
	padlen = ((off + 7) & ~7) - off;
	FUNC1(bp, padlen);
	bp += padlen;
	cmsg->cmsg_len += padlen;

	/* update the length field of the ip6 option header */
	eh->ip6e_len = ((bp - (u_char *)eh) >> 3) - 1;

	return(0);
}