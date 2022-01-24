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
struct ucl_parser {int /*<<< orphan*/  err; } ;

/* Variables and functions */
 size_t FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (struct ucl_parser*,unsigned char const*,size_t,unsigned int) ; 

bool
FUNC3 (struct ucl_parser *parser, const char *data,
		size_t len, unsigned priority)
{
	if (data == NULL) {
		FUNC1 (&parser->err, "invalid string added");
		return false;
	}
	if (len == 0) {
		len = FUNC0 (data);
	}

	return FUNC2 (parser,
			(const unsigned char *)data, len, priority);
}