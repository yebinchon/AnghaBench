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
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int /*<<< orphan*/  ip6 ;
typedef  int /*<<< orphan*/  ip4 ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char**,size_t*,scalar_t__*,size_t) ; 
 int FUNC4 (scalar_t__*) ; 
 scalar_t__ FUNC5 (char**,size_t*,char*,...) ; 

int FUNC6(char** s, size_t* sl, uint8_t* data,
	size_t len)
{
	int w = 0;
	uint16_t family;
	uint8_t source, scope;
	if(len < 4) {
		w += FUNC5(s, sl, "malformed subnet ");
		w += FUNC3(s, sl, data, len);
		return w;
	}
	family = FUNC4(data);
	source = data[2];
	scope = data[3];
	if(family == 1) {
		/* IP4 */
		char buf[64];
		uint8_t ip4[4];
		FUNC2(ip4, 0, sizeof(ip4));
		if(len-4 > 4) {
			w += FUNC5(s, sl, "trailingdata:");
			w += FUNC3(s, sl, data+4+4, len-4-4);
			w += FUNC5(s, sl, " ");
			len = 4+4;
		}
		FUNC1(ip4, data+4, len-4);
		if(!FUNC0(AF_INET, ip4, buf, (socklen_t)sizeof(buf))) {
			w += FUNC5(s, sl, "ip4ntoperror ");
			w += FUNC3(s, sl, data+4+4, len-4-4);
		} else {
			w += FUNC5(s, sl, "%s", buf);
		}
	} else if(family == 2) {
		/* IP6 */
		char buf[64];
		uint8_t ip6[16];
		FUNC2(ip6, 0, sizeof(ip6));
		if(len-4 > 16) {
			w += FUNC5(s, sl, "trailingdata:");
			w += FUNC3(s, sl, data+4+16, len-4-16);
			w += FUNC5(s, sl, " ");
			len = 4+16;
		}
		FUNC1(ip6, data+4, len-4);
#ifdef AF_INET6
		if(!inet_ntop(AF_INET6, ip6, buf, (socklen_t)sizeof(buf))) {
			w += sldns_str_print(s, sl, "ip6ntoperror ");
			w += print_hex_buf(s, sl, data+4+4, len-4-4);
		} else {
			w += sldns_str_print(s, sl, "%s", buf);
		}
#else
		w += FUNC3(s, sl, data+4+4, len-4-4);
#endif
	} else {
		/* unknown */
		w += FUNC5(s, sl, "family %d ",
			(int)family);
		w += FUNC3(s, sl, data, len);
	}
	w += FUNC5(s, sl, "/%d scope /%d", (int)source, (int)scope);
	return w;
}