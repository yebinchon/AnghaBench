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
typedef  void* u_char ;
struct rad_handle {scalar_t__ type; scalar_t__ num_servers; int* out; int ident; int out_created; scalar_t__ authentic_pos; int /*<<< orphan*/  out_len; } ;

/* Variables and functions */
 int LEN_AUTH ; 
 int /*<<< orphan*/  POS_ATTRS ; 
 int POS_AUTH ; 
 size_t POS_CODE ; 
 size_t POS_IDENT ; 
 scalar_t__ RADIUS_SERVER ; 
 int RAD_ACCESS_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (struct rad_handle*) ; 
 int /*<<< orphan*/  FUNC1 (struct rad_handle*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ,int) ; 
 long FUNC3 () ; 

int
FUNC4(struct rad_handle *h, int code)
{
	int i;

	if (h->type == RADIUS_SERVER) {
		FUNC1(h, "denied function call");
		return (-1);
	}
	if (h->num_servers == 0) {
	    	FUNC1(h, "No RADIUS servers specified");
		return (-1);
	}
	h->out[POS_CODE] = code;
	h->out[POS_IDENT] = ++h->ident;
	if (code == RAD_ACCESS_REQUEST) {
		/* Create a random authenticator */
		for (i = 0;  i < LEN_AUTH;  i += 2) {
			long r;
			r = FUNC3();
			h->out[POS_AUTH+i] = (u_char)r;
			h->out[POS_AUTH+i+1] = (u_char)(r >> 8);
		}
	} else
		FUNC2(&h->out[POS_AUTH], 0, LEN_AUTH);
	h->out_len = POS_ATTRS;
	FUNC0(h);
	h->authentic_pos = 0;
	h->out_created = 1;
	return 0;
}