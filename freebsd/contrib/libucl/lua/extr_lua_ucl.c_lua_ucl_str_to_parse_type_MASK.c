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
typedef  enum ucl_parse_type { ____Placeholder_ucl_parse_type } ucl_parse_type ;

/* Variables and functions */
 int UCL_PARSE_AUTO ; 
 int UCL_PARSE_CSEXP ; 
 int UCL_PARSE_MSGPACK ; 
 int UCL_PARSE_UCL ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline enum ucl_parse_type
FUNC1 (const char *str)
{
	enum ucl_parse_type type = UCL_PARSE_UCL;

	if (str != NULL) {
		if (FUNC0 (str, "msgpack") == 0) {
			type = UCL_PARSE_MSGPACK;
		}
		else if (FUNC0 (str, "sexp") == 0 ||
				FUNC0 (str, "csexp") == 0) {
			type = UCL_PARSE_CSEXP;
		}
		else if (FUNC0 (str, "auto") == 0) {
			type = UCL_PARSE_AUTO;
		}
	}

	return type;
}