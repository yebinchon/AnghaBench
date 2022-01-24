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
struct rerr {int code; char const* name; char* explain; } ;
typedef  int /*<<< orphan*/  regex_t ;
typedef  int /*<<< orphan*/  convbuf ;

/* Variables and functions */
 int REG_ATOI ; 
 int REG_ITOA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char*) ; 
 struct rerr* rerrs ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 

size_t
FUNC6(int errcode,
	 const regex_t * __restrict preg,
	 char * __restrict errbuf,
	 size_t errbuf_size)
{
	struct rerr *r;
	size_t len;
	int target = errcode &~ REG_ITOA;
	const char *s;
	char convbuf[50];

	if (errcode == REG_ATOI)
		s = FUNC1(preg, convbuf);
	else {
		for (r = rerrs; r->code != 0; r++)
			if (r->code == target)
				break;

		if (errcode&REG_ITOA) {
			if (r->code != 0)
				(void) FUNC3(convbuf, r->name);
			else
				FUNC2(convbuf, "REG_0x%x", target);
			FUNC0(FUNC4(convbuf) < sizeof(convbuf));
			s = convbuf;
		} else
			s = r->explain;
	}

	len = FUNC4(s) + 1;
	if (errbuf_size > 0) {
		if (errbuf_size > len)
			(void) FUNC3(errbuf, s);
		else {
			(void) FUNC5(errbuf, s, errbuf_size-1);
			errbuf[errbuf_size-1] = '\0';
		}
	}

	return(len);
}