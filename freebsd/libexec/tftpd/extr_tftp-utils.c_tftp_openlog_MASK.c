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

/* Variables and functions */
 int /*<<< orphan*/  _tftp_logtostdout ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int) ; 

void
FUNC1(const char *ident, int logopt, int facility)
{

	_tftp_logtostdout = (ident == NULL);
	if (_tftp_logtostdout == 0)
		FUNC0(ident, logopt, facility);
}