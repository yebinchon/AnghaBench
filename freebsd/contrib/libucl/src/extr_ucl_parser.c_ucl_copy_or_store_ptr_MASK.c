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
struct ucl_parser {int flags; int /*<<< orphan*/  err; int /*<<< orphan*/ * variables; } ;
typedef  int ssize_t ;

/* Variables and functions */
 unsigned char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  UCL_EINTERNAL ; 
 int /*<<< orphan*/  FUNC1 (size_t,unsigned char*) ; 
 int UCL_PARSER_ZEROCOPY ; 
 int FUNC2 (struct ucl_parser*,unsigned char**,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ucl_parser*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC5 (unsigned char*,unsigned char const*,size_t) ; 
 int FUNC6 (unsigned char*,int) ; 

__attribute__((used)) static inline ssize_t
FUNC7 (struct ucl_parser *parser,
		const unsigned char *src, unsigned char **dst,
		const char **dst_const, size_t in_len,
		bool need_unescape, bool need_lowercase, bool need_expand)
{
	ssize_t ret = -1, tret;
	unsigned char *tmp;

	if (need_unescape || need_lowercase ||
			(need_expand && parser->variables != NULL) ||
			!(parser->flags & UCL_PARSER_ZEROCOPY)) {
		/* Copy string */
		*dst = FUNC0 (in_len + 1);
		if (*dst == NULL) {
			FUNC3 (parser, UCL_EINTERNAL, "cannot allocate memory for a string",
					&parser->err);
			return false;
		}
		if (need_lowercase) {
			ret = FUNC4 (*dst, src, in_len + 1);
		}
		else {
			ret = FUNC5 (*dst, src, in_len + 1);
		}

		if (need_unescape) {
			ret = FUNC6 (*dst, ret);
		}
		if (need_expand) {
			tmp = *dst;
			tret = ret;
			ret = FUNC2 (parser, dst, tmp, ret);
			if (*dst == NULL) {
				/* Nothing to expand */
				*dst = tmp;
				ret = tret;
			}
			else {
				/* Free unexpanded value */
				FUNC1 (in_len + 1, tmp);
			}
		}
		*dst_const = *dst;
	}
	else {
		*dst_const = src;
		ret = in_len;
	}

	return ret;
}