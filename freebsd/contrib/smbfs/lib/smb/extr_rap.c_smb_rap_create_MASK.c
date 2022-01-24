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
struct smb_rap {char* r_sparam; char* r_nparam; char* r_sdata; char* r_ndata; void* r_npbuf; void* r_pbuf; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct smb_rap*,int) ; 
 void* FUNC1 (int) ; 
 scalar_t__ FUNC2 (char*,char**,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_rap*,char,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_rap*,char*) ; 
 void* FUNC5 (char const*) ; 
 int FUNC6 (char const*) ; 

int
FUNC7(int fn, const char *param, const char *data,
	struct smb_rap **rapp)
{
	struct smb_rap *rap;
	char *p;
	int plen, len;

	rap = FUNC1(sizeof(*rap));
	if (rap == NULL)
		return ENOMEM;
	FUNC0(rap, sizeof(*rap));
	p = rap->r_sparam = rap->r_nparam = FUNC5(param);
	rap->r_sdata = rap->r_ndata = FUNC5(data);
	/*
	 * Calculate length of request parameter block
	 */
	len = 2 + FUNC6(param) + 1 + FUNC6(data) + 1;
	
	while (*p) {
		if (FUNC2(p, &p, &plen) != 0)
			break;
		len += plen;
	}
	rap->r_pbuf = rap->r_npbuf = FUNC1(len);
	FUNC3(rap, 'W', 1, fn);
	FUNC4(rap, rap->r_sparam);
	FUNC4(rap, rap->r_sdata);
	*rapp = rap;
	return 0;
}