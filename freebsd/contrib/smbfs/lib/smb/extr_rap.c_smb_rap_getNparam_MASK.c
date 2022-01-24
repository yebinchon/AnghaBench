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
typedef  int /*<<< orphan*/  u_int16_t ;
struct smb_rap {char* r_nparam; int r_npbuf; } ;

/* Variables and functions */
 int EINVAL ; 
 long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,char**,int*) ; 

__attribute__((used)) static int
FUNC2(struct smb_rap *rap, long *value)
{
	char *p = rap->r_nparam;
	char ptype = *p;
	int error, plen;

	error = FUNC1(p, &p, &plen);
	if (error)
		return error;
	switch (ptype) {
	    case 'h':
		*value = FUNC0(*(u_int16_t*)rap->r_npbuf);
		break;
	    default:
		return EINVAL;
	}
	rap->r_npbuf += plen;
	rap->r_nparam = p;
	return 0;
}