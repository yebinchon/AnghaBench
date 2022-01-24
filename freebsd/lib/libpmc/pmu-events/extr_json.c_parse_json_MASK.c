#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jsmntok_t ;
typedef  scalar_t__ jsmnerr_t ;
struct TYPE_4__ {int toknext; } ;
typedef  TYPE_1__ jsmn_parser ;

/* Variables and functions */
 scalar_t__ JSMN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,size_t,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (unsigned int) ; 
 char* FUNC5 (char const*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,size_t) ; 

jsmntok_t *FUNC8(const char *fn, char **map, size_t *size, int *len)
{
	jsmn_parser parser;
	jsmntok_t *tokens;
	jsmnerr_t res;
	unsigned sz;

	*map = FUNC5(fn, size);
	if (!*map)
		return NULL;
	/* Heuristic */
	sz = *size * 16;
	tokens = FUNC4(sz);
	if (!tokens)
		goto error;
	FUNC1(&parser);
	res = FUNC2(&parser, *map, *size, tokens,
			 sz / sizeof(jsmntok_t));
	if (res != JSMN_SUCCESS) {
		FUNC6("%s: json error %s\n", fn, FUNC3(res));
		goto error_free;
	}
	if (len)
		*len = parser.toknext;
	return tokens;
error_free:
	FUNC0(tokens);
error:
	FUNC7(*map, *size);
	return NULL;
}