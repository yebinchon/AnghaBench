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
struct ucl_emitter_functions {int /*<<< orphan*/  ud; int /*<<< orphan*/  (* ucl_emitter_append_character ) (char,int,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* ucl_emitter_append_len ) (char const*,size_t,int /*<<< orphan*/ ) ;} ;
struct ucl_emitter_context {struct ucl_emitter_functions* func; } ;

/* Variables and functions */
 int UCL_CHARACTER_DENIED ; 
 int UCL_CHARACTER_JSON_UNSAFE ; 
 int /*<<< orphan*/  FUNC0 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const,int) ; 

void
FUNC13 (const char *str, size_t size,
		struct ucl_emitter_context *ctx)
{
	const char *p = str, *c = str;
	size_t len = 0;
	const struct ucl_emitter_functions *func = ctx->func;

	func->ucl_emitter_append_character ('"', 1, func->ud);

	while (size) {
		if (FUNC12 (*p, UCL_CHARACTER_JSON_UNSAFE|UCL_CHARACTER_DENIED)) {
			if (len > 0) {
				func->ucl_emitter_append_len (c, len, func->ud);
			}
			switch (*p) {
			case '\n':
				func->ucl_emitter_append_len ("\\n", 2, func->ud);
				break;
			case '\r':
				func->ucl_emitter_append_len ("\\r", 2, func->ud);
				break;
			case '\b':
				func->ucl_emitter_append_len ("\\b", 2, func->ud);
				break;
			case '\t':
				func->ucl_emitter_append_len ("\\t", 2, func->ud);
				break;
			case '\f':
				func->ucl_emitter_append_len ("\\f", 2, func->ud);
				break;
			case '\\':
				func->ucl_emitter_append_len ("\\\\", 2, func->ud);
				break;
			case '"':
				func->ucl_emitter_append_len ("\\\"", 2, func->ud);
				break;
			default:
				/* Emit unicode unknown character */
				func->ucl_emitter_append_len ("\\uFFFD", 5, func->ud);
				break;
			}
			len = 0;
			c = ++p;
		}
		else {
			p ++;
			len ++;
		}
		size --;
	}

	if (len > 0) {
		func->ucl_emitter_append_len (c, len, func->ud);
	}

	func->ucl_emitter_append_character ('"', 1, func->ud);
}