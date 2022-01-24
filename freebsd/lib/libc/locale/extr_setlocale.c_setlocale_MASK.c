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
 int EINVAL ; 
 int ENCODING_LEN ; 
 int LC_ALL ; 
 int _LC_LAST ; 
 char* FUNC0 (int) ; 
 char** current_categories ; 
 char* FUNC1 () ; 
 int errno ; 
 char* FUNC2 (int) ; 
 char** new_categories ; 
 char** saved_categories ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int FUNC6 (char const*) ; 

char *
FUNC7(int category, const char *locale)
{
	int i, j, len, saverr;
	const char *env, *r;

	if (category < LC_ALL || category >= _LC_LAST) {
		errno = EINVAL;
		return (NULL);
	}
	if (locale == NULL)
		return (category != LC_ALL ?
		    current_categories[category] : FUNC1());

	/*
	 * Default to the current locale for everything.
	 */
	for (i = 1; i < _LC_LAST; ++i)
		(void)FUNC4(new_categories[i], current_categories[i]);

	/*
	 * Now go fill up new_categories from the locale argument
	 */
	if (!*locale) {
		if (category == LC_ALL) {
			for (i = 1; i < _LC_LAST; ++i) {
				env = FUNC0(i);
				if (FUNC6(env) > ENCODING_LEN) {
					errno = EINVAL;
					return (NULL);
				}
				(void)FUNC4(new_categories[i], env);
			}
		} else {
			env = FUNC0(category);
			if (FUNC6(env) > ENCODING_LEN) {
				errno = EINVAL;
				return (NULL);
			}
			(void)FUNC4(new_categories[category], env);
		}
	} else if (category != LC_ALL) {
		if (FUNC6(locale) > ENCODING_LEN) {
			errno = EINVAL;
			return (NULL);
		}
		(void)FUNC4(new_categories[category], locale);
	} else {
		if ((r = FUNC3(locale, '/')) == NULL) {
			if (FUNC6(locale) > ENCODING_LEN) {
				errno = EINVAL;
				return (NULL);
			}
			for (i = 1; i < _LC_LAST; ++i)
				(void)FUNC4(new_categories[i], locale);
		} else {
			for (i = 1; r[1] == '/'; ++r)
				;
			if (!r[1]) {
				errno = EINVAL;
				return (NULL);	/* Hmm, just slashes... */
			}
			do {
				if (i == _LC_LAST)
					break;	/* Too many slashes... */
				if ((len = r - locale) > ENCODING_LEN) {
					errno = EINVAL;
					return (NULL);
				}
				(void)FUNC5(new_categories[i], locale,
				    len + 1);
				i++;
				while (*r == '/')
					r++;
				locale = r;
				while (*r && *r != '/')
					r++;
			} while (*locale);
			while (i < _LC_LAST) {
				(void)FUNC4(new_categories[i],
				    new_categories[i - 1]);
				i++;
			}
		}
	}

	if (category != LC_ALL)
		return (FUNC2(category));

	for (i = 1; i < _LC_LAST; ++i) {
		(void)FUNC4(saved_categories[i], current_categories[i]);
		if (FUNC2(i) == NULL) {
			saverr = errno;
			for (j = 1; j < i; j++) {
				(void)FUNC4(new_categories[j],
				    saved_categories[j]);
				if (FUNC2(j) == NULL) {
					(void)FUNC4(new_categories[j], "C");
					(void)FUNC2(j);
				}
			}
			errno = saverr;
			return (NULL);
		}
	}
	return (FUNC1());
}