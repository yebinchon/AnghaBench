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
typedef  int /*<<< orphan*/  value4 ;
typedef  int /*<<< orphan*/  value2 ;
typedef  int u_int8_t ;
typedef  int u_int32_t ;
typedef  int u_int16_t ;
struct ip6_hbh {int ip6h_len; int ip6h_nxt; } ;
typedef  size_t socklen_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
#define  IP6OPT_JUMBO 129 
#define  IP6OPT_ROUTER_ALERT 128 
 size_t FUNC1 (void*,size_t,int*,int) ; 
 int FUNC2 (void*,size_t,int,int*,size_t*,void**) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC7(void *extbuf, size_t bufsize)
{
	struct ip6_hbh *ext;
	int currentlen;
	u_int8_t type;
	socklen_t extlen, len;
	void *databuf;
	size_t offset;
	u_int16_t value2;
	u_int32_t value4;

	ext = (struct ip6_hbh *)extbuf;
	extlen = (ext->ip6h_len + 1) * 8;
	FUNC5("nxt %u, len %u (%lu bytes)\n", ext->ip6h_nxt,
	    (unsigned int)ext->ip6h_len, (unsigned long)extlen);

	/*
	 * Bounds checking on the ancillary data buffer:
	 *     subtract the size of a cmsg structure from the buffer size.
	 */
	if (bufsize < (extlen  + FUNC0(0))) {
		extlen = bufsize - FUNC0(0);
		FUNC6("options truncated, showing only %u (total=%u)",
		    (unsigned int)(extlen / 8 - 1),
		    (unsigned int)(ext->ip6h_len));
	}

	currentlen = 0;
	while (1) {
		currentlen = FUNC2(extbuf, extlen, currentlen,
		    &type, &len, &databuf);
		if (currentlen == -1)
			break;
		switch (type) {
		/*
		 * Note that inet6_opt_next automatically skips any padding
		 * optins.
		 */
		case IP6OPT_JUMBO:
			offset = 0;
			offset = FUNC1(databuf, offset,
			    &value4, sizeof(value4));
			FUNC5("    Jumbo Payload Opt: Length %u\n",
			    (u_int32_t)FUNC3(value4));
			break;
		case IP6OPT_ROUTER_ALERT:
			offset = 0;
			offset = FUNC1(databuf, offset,
						   &value2, sizeof(value2));
			FUNC5("    Router Alert Opt: Type %u\n",
			    FUNC4(value2));
			break;
		default:
			FUNC5("    Received Opt %u len %lu\n",
			    type, (unsigned long)len);
			break;
		}
	}
	return;
}