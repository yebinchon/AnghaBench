#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
typedef  int u_char ;
struct bsnamemem {char const* bs_name; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef  TYPE_1__ netdissect_options ;

/* Variables and functions */
 int BUFSIZE ; 
 void** hex ; 
 struct bsnamemem* FUNC0 (TYPE_1__*,int const*,unsigned int const) ; 
 char const* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 

const char *
FUNC3(netdissect_options *ndo, const u_char *ep)
{
	const unsigned int len = 8;
	register u_int i;
	register char *cp;
	register struct bsnamemem *tp;
	char buf[BUFSIZE];

	tp = FUNC0(ndo, ep, len);
	if (tp->bs_name)
		return (tp->bs_name);

	cp = buf;
	for (i = len; i > 0 ; --i) {
		*cp++ = hex[*(ep + i - 1) >> 4];
		*cp++ = hex[*(ep + i - 1) & 0xf];
		*cp++ = ':';
	}
	cp --;

	*cp = '\0';

	tp->bs_name = FUNC1(buf);
	if (tp->bs_name == NULL)
		(*ndo->ndo_error)(ndo, "le64addr_string: strdup(buf)");

	return (tp->bs_name);
}