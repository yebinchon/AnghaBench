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
struct outdata {int seq; } ;
struct grehdr {void* callId; scalar_t__ length; void* proto; void* flags; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int ident ; 
 scalar_t__ outp ; 
 int port ; 

void
FUNC1(struct outdata *outdata)
{
	struct grehdr *const gre = (struct grehdr *) outp;

	gre->flags = FUNC0(0x2001);
	gre->proto = FUNC0(port);
	gre->length = 0;
	gre->callId = FUNC0(ident + outdata->seq);
}