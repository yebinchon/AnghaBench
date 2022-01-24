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
struct smb_rap {char* r_npbuf; int r_plen; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*,long,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,long) ; 

__attribute__((used)) static int
FUNC3(struct smb_rap *rap, char ptype, char plen, long value)
{
	char *p = rap->r_npbuf;
	int len;

	switch (ptype) {
	    case 'L':
	    case 'W':
		FUNC2(p, 0, value);
		len = 2;
		break;
	    case 'D':
		FUNC1(p, 0, value);
		len = 4;
		break;
	    case 'b':
		FUNC0(p, value, plen);
		len = plen;
	    default:
		return EINVAL;
	}
	rap->r_npbuf += len;
	rap->r_plen += len;
	return 0;
}