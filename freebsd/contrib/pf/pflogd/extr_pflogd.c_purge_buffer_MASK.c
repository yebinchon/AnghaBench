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
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  bufleft ; 
 int /*<<< orphan*/  buflen ; 
 scalar_t__ bufpkt ; 
 int /*<<< orphan*/  bufpos ; 
 int /*<<< orphan*/  packets_dropped ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1(void)
{
	packets_dropped += bufpkt;

	FUNC0(0);
	bufpos = buffer;
	bufleft = buflen;
	bufpkt = 0;
}