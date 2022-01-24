#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* sv; } ;
struct TYPE_8__ {char** trash_stack; size_t len; TYPE_1__ value; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ ucl_object_t ;
typedef  enum ucl_string_flags { ____Placeholder_ucl_string_flags } ucl_string_flags ;

/* Variables and functions */
 int /*<<< orphan*/  UCL_CHARACTER_JSON_UNSAFE ; 
 int /*<<< orphan*/  UCL_CHARACTER_WHITESPACE_UNSAFE ; 
 int /*<<< orphan*/  UCL_STRING ; 
 int UCL_STRING_ESCAPE ; 
 int UCL_STRING_PARSE ; 
 int UCL_STRING_PARSE_BOOLEAN ; 
 int UCL_STRING_PARSE_BYTES ; 
 int UCL_STRING_PARSE_DOUBLE ; 
 int UCL_STRING_PARSE_NUMBER ; 
 int UCL_STRING_PARSE_TIME ; 
 int UCL_STRING_TRIM ; 
 size_t UCL_TRASH_VALUE ; 
 char* FUNC0 (int) ; 
 size_t FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char*,char*,char const**,int,int,int) ; 
 TYPE_2__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 scalar_t__ FUNC6 (char const,int /*<<< orphan*/ ) ; 

ucl_object_t *
FUNC7 (const char *str, size_t len, enum ucl_string_flags flags)
{
	ucl_object_t *obj;
	const char *start, *end, *p, *pos;
	char *dst, *d;
	size_t escaped_len;

	if (str == NULL) {
		return NULL;
	}

	obj = FUNC4 ();
	if (obj) {
		if (len == 0) {
			len = FUNC1 (str);
		}
		if (flags & UCL_STRING_TRIM) {
			/* Skip leading spaces */
			for (start = str; (size_t)(start - str) < len; start ++) {
				if (!FUNC6 (*start, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
					break;
				}
			}
			/* Skip trailing spaces */
			for (end = str + len - 1; end > start; end --) {
				if (!FUNC6 (*end, UCL_CHARACTER_WHITESPACE_UNSAFE)) {
					break;
				}
			}
			end ++;
		}
		else {
			start = str;
			end = str + len;
		}

		obj->type = UCL_STRING;
		if (flags & UCL_STRING_ESCAPE) {
			for (p = start, escaped_len = 0; p < end; p ++, escaped_len ++) {
				if (FUNC6 (*p, UCL_CHARACTER_JSON_UNSAFE)) {
					escaped_len ++;
				}
			}
			dst = FUNC0 (escaped_len + 1);
			if (dst != NULL) {
				for (p = start, d = dst; p < end; p ++, d ++) {
					if (FUNC6 (*p, UCL_CHARACTER_JSON_UNSAFE)) {
						switch (*p) {
						case '\n':
							*d++ = '\\';
							*d = 'n';
							break;
						case '\r':
							*d++ = '\\';
							*d = 'r';
							break;
						case '\b':
							*d++ = '\\';
							*d = 'b';
							break;
						case '\t':
							*d++ = '\\';
							*d = 't';
							break;
						case '\f':
							*d++ = '\\';
							*d = 'f';
							break;
						case '\\':
							*d++ = '\\';
							*d = '\\';
							break;
						case '"':
							*d++ = '\\';
							*d = '"';
							break;
						}
					}
					else {
						*d = *p;
					}
				}
				*d = '\0';
				obj->value.sv = dst;
				obj->trash_stack[UCL_TRASH_VALUE] = dst;
				obj->len = escaped_len;
			}
		}
		else {
			dst = FUNC0 (end - start + 1);
			if (dst != NULL) {
				FUNC5 (dst, start, end - start + 1);
				obj->value.sv = dst;
				obj->trash_stack[UCL_TRASH_VALUE] = dst;
				obj->len = end - start;
			}
		}
		if ((flags & UCL_STRING_PARSE) && dst != NULL) {
			/* Parse what we have */
			if (flags & UCL_STRING_PARSE_BOOLEAN) {
				if (!FUNC2 (obj, dst, obj->len) && (flags & UCL_STRING_PARSE_NUMBER)) {
					FUNC3 (obj, dst, dst + obj->len, &pos,
							flags & UCL_STRING_PARSE_DOUBLE,
							flags & UCL_STRING_PARSE_BYTES,
							flags & UCL_STRING_PARSE_TIME);
				}
			}
			else {
				FUNC3 (obj, dst, dst + obj->len, &pos,
						flags & UCL_STRING_PARSE_DOUBLE,
						flags & UCL_STRING_PARSE_BYTES,
						flags & UCL_STRING_PARSE_TIME);
			}
		}
	}

	return obj;
}