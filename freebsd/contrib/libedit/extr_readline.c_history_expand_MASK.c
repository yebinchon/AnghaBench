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
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 int FUNC1 (char*,size_t,size_t,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * e ; 
 char* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * h ; 
 char history_expansion_char ; 
 scalar_t__ FUNC5 (char*,int) ; 
 int /*<<< orphan*/  history_no_expand_chars ; 
 char history_subst_char ; 
 scalar_t__ FUNC6 (unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 char* FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 scalar_t__ FUNC13 (char*,int) ; 

int
FUNC14(char *str, char **output)
{
	int ret = 0;
	size_t idx, i, size;
	char *tmp, *result;

	if (h == NULL || e == NULL)
		FUNC8();

	if (history_expansion_char == 0) {
		*output = FUNC11(str);
		return 0;
	}

	*output = NULL;
	if (str[0] == history_subst_char) {
		/* ^foo^foo2^ is equivalent to !!:s^foo^foo2^ */
		*output = FUNC3(FUNC12(str) + 4 + 1, sizeof(**output));
		if (*output == NULL)
			return 0;
		(*output)[0] = (*output)[1] = history_expansion_char;
		(*output)[2] = ':';
		(*output)[3] = 's';
		(void)FUNC10((*output) + 4, str);
		str = *output;
	} else {
		*output = FUNC11(str);
		if (*output == NULL)
			return 0;
	}

#define ADD_STRING(what, len, fr)					\
	{								\
		if (idx + len + 1 > size) {				\
			char *nresult = el_realloc(result,		\
			    (size += len + 1) * sizeof(*nresult));	\
			if (nresult == NULL) {				\
				el_free(*output);			\
				if (/*CONSTCOND*/fr)			\
					el_free(tmp);			\
				return 0;				\
			}						\
			result = nresult;				\
		}							\
		(void)strncpy(&result[idx], what, len);			\
		idx += len;						\
		result[idx] = '\0';					\
	}

	result = NULL;
	size = idx = 0;
	tmp = NULL;
	for (i = 0; str[i];) {
		int qchar, loop_again;
		size_t len, start, j;

		qchar = 0;
		loop_again = 1;
		start = j = i;
loop:
		for (; str[j]; j++) {
			if (str[j] == '\\' &&
			    str[j + 1] == history_expansion_char) {
				len = FUNC12(&str[j + 1]) + 1;
				FUNC7(&str[j], &str[j + 1], len);
				continue;
			}
			if (!loop_again) {
				if (FUNC6((unsigned char) str[j])
				    || str[j] == qchar)
					break;
			}
			if (str[j] == history_expansion_char
			    && !FUNC9(history_no_expand_chars, str[j + 1])
			    && (!&history_inhibit_expansion_function ||
			    FUNC5)(str,
			    (int)j) == 0))
				break;
		}

		if (str[j] && loop_again) {
			i = j;
			qchar = (j > 0 && str[j - 1] == '"' )? '"':0;
			j++;
			if (str[j] == history_expansion_char)
				j++;
			loop_again = 0;
			goto loop;
		}
		len = i - start;
		ADD_STRING(&str[start], len, 0);

		if (str[i] == '\0' || str[i] != history_expansion_char) {
			len = j - i;
			ADD_STRING(&str[i], len, 0);
			if (start == 0)
				ret = 0;
			else
				ret = 1;
			break;
		}
		ret = FUNC1 (str, i, (j - i), &tmp);
		if (ret > 0 && tmp) {
			len = FUNC12(tmp);
			ADD_STRING(tmp, len, 1);
		}
		if (tmp) {
			FUNC4(tmp);
			tmp = NULL;
		}
		i = j;
	}

	/* ret is 2 for "print only" option */
	if (ret == 2) {
		FUNC2(result);
#ifdef GDB_411_HACK
		/* gdb 4.11 has been shipped with readline, where */
		/* history_expand() returned -1 when the line	  */
		/* should not be executed; in readline 2.1+	  */
		/* it should return 2 in such a case		  */
		ret = -1;
#endif
	}
	FUNC4(*output);
	*output = result;

	return ret;
}