#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char http_header_lex_t ;
struct TYPE_4__ {int valid; size_t count; TYPE_2__** challenges; } ;
typedef  TYPE_1__ http_auth_challenges_t ;
typedef  int /*<<< orphan*/  http_auth_challenge_t ;
struct TYPE_5__ {scalar_t__ stale; void* algo; void* opaque; void* nonce; void* qop; void* realm; int /*<<< orphan*/  scheme; } ;

/* Variables and functions */
 int /*<<< orphan*/  HTTPAS_BASIC ; 
 int /*<<< orphan*/  HTTPAS_DIGEST ; 
 int /*<<< orphan*/  HTTPAS_UNKNOWN ; 
 char HTTPHL_END ; 
 char HTTPHL_STRING ; 
 char HTTPHL_WORD ; 
 size_t MAX_CHALLENGES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char FUNC2 (char const**,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 void* FUNC4 (int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 void* FUNC6 (char*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(const char *cp, http_auth_challenges_t *cs)
{
	int ret = -1;
	http_header_lex_t lex;
	char *key = FUNC4(FUNC7(cp) + 1);
	char *value = FUNC4(FUNC7(cp) + 1);
	char *buf = FUNC4(FUNC7(cp) + 1);

	if (key == NULL || value == NULL || buf == NULL) {
		FUNC0();
		goto out;
	}

	/* In any case we've seen the header and we set the valid bit */
	cs->valid = 1;

	/* Need word first */
	lex = FUNC2(&cp, key);
	if (lex != HTTPHL_WORD)
		goto out;

	/* Loop on challenges */
	for (; cs->count < MAX_CHALLENGES; cs->count++) {
		cs->challenges[cs->count] =
			FUNC4(sizeof(http_auth_challenge_t));
		if (cs->challenges[cs->count] == NULL) {
			FUNC0();
			goto out;
		}
		FUNC3(cs->challenges[cs->count]);
		if (FUNC5(key, "basic") == 0) {
			cs->challenges[cs->count]->scheme = HTTPAS_BASIC;
		} else if (FUNC5(key, "digest") == 0) {
			cs->challenges[cs->count]->scheme = HTTPAS_DIGEST;
		} else {
			cs->challenges[cs->count]->scheme = HTTPAS_UNKNOWN;
			/*
			 * Continue parsing as basic or digest may
			 * follow, and the syntax is the same for
			 * all. We'll just ignore this one when
			 * looking at the list
			 */
		}

		/* Loop on attributes */
		for (;;) {
			/* Key */
			lex = FUNC2(&cp, key);
			if (lex != HTTPHL_WORD)
				goto out;

			/* Equal sign */
			lex = FUNC2(&cp, buf);
			if (lex != '=')
				goto out;

			/* Value */
			lex = FUNC2(&cp, value);
			if (lex != HTTPHL_WORD && lex != HTTPHL_STRING)
				goto out;

			if (FUNC5(key, "realm") == 0) {
				cs->challenges[cs->count]->realm =
				    FUNC6(value);
			} else if (FUNC5(key, "qop") == 0) {
				cs->challenges[cs->count]->qop =
				    FUNC6(value);
			} else if (FUNC5(key, "nonce") == 0) {
				cs->challenges[cs->count]->nonce =
				    FUNC6(value);
			} else if (FUNC5(key, "opaque") == 0) {
				cs->challenges[cs->count]->opaque =
				    FUNC6(value);
			} else if (FUNC5(key, "algorithm") == 0) {
				cs->challenges[cs->count]->algo =
				    FUNC6(value);
			} else if (FUNC5(key, "stale") == 0) {
				cs->challenges[cs->count]->stale =
				    FUNC5(value, "no");
			} else {
				/* ignore unknown attributes */
			}

			/* Comma or Next challenge or End */
			lex = FUNC2(&cp, key);
			/*
			 * If we get a word here, this is the beginning of the
			 * next challenge. Break the attributes loop
			 */
			if (lex == HTTPHL_WORD)
				break;

			if (lex == HTTPHL_END) {
				/* End while looking for ',' is normal exit */
				cs->count++;
				ret = 0;
				goto out;
			}
			/* Anything else is an error */
			if (lex != ',')
				goto out;

		} /* End attributes loop */
	} /* End challenge loop */

	/*
	 * Challenges max count exceeded. This really can't happen
	 * with normal data, something's fishy -> error
	 */

out:
	if (key)
		FUNC1(key);
	if (value)
		FUNC1(value);
	if (buf)
		FUNC1(buf);
	return (ret);
}