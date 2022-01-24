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
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int FUNC4 (char const*) ; 

size_t
FUNC5(int errcode, const regex_t *preg, char *errbuf, size_t errbuf_size)
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
			if (r->code != 0) {
				FUNC0(FUNC4(r->name) < sizeof(convbuf));
				(void) FUNC3(convbuf, r->name, sizeof(convbuf));
			} else
				(void) FUNC2(convbuf, sizeof(convbuf),
				    "REG_0x%x", target);
			s = convbuf;
		} else
			s = r->explain;
	}

	len = FUNC4(s) + 1;
	if (errbuf_size > 0) {
		FUNC3(errbuf, s, errbuf_size);
	}

	return(len);
}