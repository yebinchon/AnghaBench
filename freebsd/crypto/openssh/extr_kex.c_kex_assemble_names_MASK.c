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

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*,char*) ; 
 char* FUNC4 (char const*) ; 
 char* FUNC5 (char**,char*) ; 

int
FUNC6(char **listp, const char *def, const char *all)
{
	char *cp, *tmp, *patterns;
	char *list = NULL, *ret = NULL, *matching = NULL, *opatterns = NULL;
	int r = SSH_ERR_INTERNAL_ERROR;

	if (listp == NULL || *listp == NULL || **listp == '\0') {
		if ((*listp = FUNC4(def)) == NULL)
			return SSH_ERR_ALLOC_FAIL;
		return 0;
	}

	list = *listp;
	*listp = NULL;
	if (*list == '+') {
		/* Append names to default list */
		if ((tmp = FUNC1(def, list + 1)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto fail;
		}
		FUNC0(list);
		list = tmp;
	} else if (*list == '-') {
		/* Remove names from default list */
		if ((*listp = FUNC2(def, list + 1)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto fail;
		}
		FUNC0(list);
		/* filtering has already been done */
		return 0;
	} else {
		/* Explicit list, overrides default - just use "list" as is */
	}

	/*
	 * The supplied names may be a pattern-list. For the -list case,
	 * the patterns are applied above. For the +list and explicit list
	 * cases we need to do it now.
	 */
	ret = NULL;
	if ((patterns = opatterns = FUNC4(list)) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto fail;
	}
	/* Apply positive (i.e. non-negated) patterns from the list */
	while ((cp = FUNC5(&patterns, ",")) != NULL) {
		if (*cp == '!') {
			/* negated matches are not supported here */
			r = SSH_ERR_INVALID_ARGUMENT;
			goto fail;
		}
		FUNC0(matching);
		if ((matching = FUNC3(all, cp)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto fail;
		}
		if ((tmp = FUNC1(ret, matching)) == NULL) {
			r = SSH_ERR_ALLOC_FAIL;
			goto fail;
		}
		FUNC0(ret);
		ret = tmp;
	}
	if (ret == NULL || *ret == '\0') {
		/* An empty name-list is an error */
		/* XXX better error code? */
		r = SSH_ERR_INVALID_ARGUMENT;
		goto fail;
	}

	/* success */
	*listp = ret;
	ret = NULL;
	r = 0;

 fail:
	FUNC0(matching);
	FUNC0(opatterns);
	FUNC0(list);
	FUNC0(ret);
	return r;
}