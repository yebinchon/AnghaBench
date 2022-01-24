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
typedef  int /*<<< orphan*/  u_char ;
struct grehdr {int /*<<< orphan*/  callId; int /*<<< orphan*/  proto; } ;

/* Variables and functions */
 scalar_t__ ident ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ port ; 

int
FUNC1(const u_char *data, int seq)
{
	struct grehdr *const gre = (struct grehdr *) data;

	return(FUNC0(gre->proto) == port
	    && FUNC0(gre->callId) == ident + seq);
}