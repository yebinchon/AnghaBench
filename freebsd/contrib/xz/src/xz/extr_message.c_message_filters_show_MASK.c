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
typedef  int /*<<< orphan*/  lzma_filter ;
typedef  enum message_verbosity { ____Placeholder_message_verbosity } message_verbosity ;

/* Variables and functions */
 int FILTERS_STR_SIZE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/  const*,int) ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

extern void
FUNC3(enum message_verbosity v, const lzma_filter *filters)
{
	if (v > verbosity)
		return;

	char buf[FILTERS_STR_SIZE];
	FUNC2(buf, filters, true);
	FUNC1(stderr, FUNC0("%s: Filter chain: %s\n"), progname, buf);
	return;
}