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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

int 
FUNC5(const char* str, int allow, int* avail, int num)
{
	char* mid = FUNC3(str, '-');
	if(!mid) {
		int port = FUNC0(str);
		if(port == 0 && FUNC4(str, "0") != 0) {
			FUNC1("cannot parse port number '%s'", str);
			return 0;
		}
		if(port < num)
			avail[port] = (allow?port:0);
	} else {
		int i, low, high = FUNC0(mid+1);
		char buf[16];
		if(high == 0 && FUNC4(mid+1, "0") != 0) {
			FUNC1("cannot parse port number '%s'", mid+1);
			return 0;
		}
		if( (int)(mid-str)+1 >= (int)sizeof(buf) ) {
			FUNC1("cannot parse port number '%s'", str);
			return 0;
		}
		if(mid > str)
			FUNC2(buf, str, (size_t)(mid-str));
		buf[mid-str] = 0;
		low = FUNC0(buf);
		if(low == 0 && FUNC4(buf, "0") != 0) {
			FUNC1("cannot parse port number '%s'", buf);
			return 0;
		}
		for(i=low; i<=high; i++) {
			if(i < num)
				avail[i] = (allow?i:0);
		}
		return 1;
	}
	return 1;
}