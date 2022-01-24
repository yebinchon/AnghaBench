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
struct outdata {scalar_t__ seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ident ; 
 scalar_t__ outp ; 
 scalar_t__ port ; 

void
FUNC1(struct outdata *outdata)
{
	u_int16_t *const ptr = (u_int16_t *) outp;

	ptr[0] = FUNC0(ident);
	ptr[1] = FUNC0(port + outdata->seq);
}