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
struct ucl_parser {int /*<<< orphan*/  default_priority; } ;

/* Variables and functions */
 int FUNC0 (struct ucl_parser*,int,int /*<<< orphan*/ ) ; 

bool
FUNC1 (struct ucl_parser *parser, int fd)
{
	if (parser == NULL) {
		return false;
	}

	return FUNC0(parser, fd, parser->default_priority);
}