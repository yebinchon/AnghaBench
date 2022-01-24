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
typedef  enum ucl_emitter { ____Placeholder_ucl_emitter } ucl_emitter ;

/* Variables and functions */
 int UCL_EMIT_CONFIG ; 
 int UCL_EMIT_JSON ; 
 int UCL_EMIT_JSON_COMPACT ; 
 int UCL_EMIT_YAML ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static inline enum ucl_emitter
FUNC1 (const char *strtype)
{
	enum ucl_emitter format = UCL_EMIT_JSON_COMPACT;

	if (FUNC0 (strtype, "json") == 0) {
		format = UCL_EMIT_JSON;
	}
	else if (FUNC0 (strtype, "json-compact") == 0) {
		format = UCL_EMIT_JSON_COMPACT;
	}
	else if (FUNC0 (strtype, "yaml") == 0) {
		format = UCL_EMIT_YAML;
	}
	else if (FUNC0 (strtype, "config") == 0 ||
			FUNC0 (strtype, "ucl") == 0) {
		format = UCL_EMIT_CONFIG;
	}

	return format;
}