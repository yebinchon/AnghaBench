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
 char* FUNC0 (char*,char*,char*,int) ; 
 char* FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC5 (char const*,int*,int) ; 
 char* FUNC6 (int,int,char*) ; 
 scalar_t__ FUNC7 (unsigned char) ; 
 char* last_search_match ; 
 int /*<<< orphan*/  rl_outstream ; 
 scalar_t__ FUNC8 (char*,char const) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 char* FUNC10 (char*) ; 
 size_t FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,size_t) ; 
 char* FUNC13 (char*,char) ; 

__attribute__((used)) static int
FUNC14(const char *command, size_t offs, size_t cmdlen,
    char **result)
{
	char *tmp, *search = NULL, *aptr;
	const char *ptr, *cmd;
	static char *from = NULL, *to = NULL;
	int start, end, idx, has_mods = 0;
	int p_on = 0, g_on = 0;

	*result = NULL;
	aptr = NULL;
	ptr = NULL;

	/* First get event specifier */
	idx = 0;

	if (FUNC8(":^*$", command[offs + 1])) {
		char str[4];
		/*
		* "!:" is shorthand for "!!:".
		* "!^", "!*" and "!$" are shorthand for
		* "!!:^", "!!:*" and "!!:$" respectively.
		*/
		str[0] = str[1] = '!';
		str[2] = '0';
		ptr = FUNC5(str, &idx, 0);
		idx = (command[offs + 1] == ':')? 1:0;
		has_mods = 1;
	} else {
		if (command[offs + 1] == '#') {
			/* use command so far */
			if ((aptr = FUNC1(offs + 1, sizeof(*aptr)))
			    == NULL)
				return -1;
			(void)FUNC12(aptr, command, offs);
			aptr[offs] = '\0';
			idx = 1;
		} else {
			int	qchar;

			qchar = (offs > 0 && command[offs - 1] == '"')? '"':0;
			ptr = FUNC5(command + offs, &idx, qchar);
		}
		has_mods = command[offs + (size_t)idx] == ':';
	}

	if (ptr == NULL && aptr == NULL)
		return -1;

	if (!has_mods) {
		*result = FUNC10(aptr ? aptr : ptr);
		if (aptr)
			FUNC2(aptr);
		if (*result == NULL)
			return -1;
		return 1;
	}

	cmd = command + offs + idx + 1;

	/* Now parse any word designators */

	if (*cmd == '%')	/* last word matched by ?pat? */
		tmp = FUNC10(last_search_match? last_search_match:"");
	else if (FUNC8("^*$-0123456789", *cmd)) {
		start = end = -1;
		if (*cmd == '^')
			start = end = 1, cmd++;
		else if (*cmd == '$')
			start = -1, cmd++;
		else if (*cmd == '*')
			start = 1, cmd++;
	       else if (*cmd == '-' || FUNC7((unsigned char) *cmd)) {
			start = 0;
			while (*cmd && '0' <= *cmd && *cmd <= '9')
				start = start * 10 + *cmd++ - '0';

			if (*cmd == '-') {
				if (FUNC7((unsigned char) cmd[1])) {
					cmd++;
					end = 0;
					while (*cmd && '0' <= *cmd && *cmd <= '9')
						end = end * 10 + *cmd++ - '0';
				} else if (cmd[1] == '$') {
					cmd += 2;
					end = -1;
				} else {
					cmd++;
					end = -2;
				}
			} else if (*cmd == '*')
				end = -1, cmd++;
			else
				end = start;
		}
		tmp = FUNC6(start, end, aptr? aptr:ptr);
		if (tmp == NULL) {
			(void)FUNC4(rl_outstream, "%s: Bad word specifier",
			    command + offs + idx);
			if (aptr)
				FUNC2(aptr);
			return -1;
		}
	} else
		tmp = FUNC10(aptr? aptr:ptr);

	if (aptr)
		FUNC2(aptr);

	if (*cmd == '\0' || ((size_t)(cmd - (command + offs)) >= cmdlen)) {
		*result = tmp;
		return 1;
	}

	for (; *cmd; cmd++) {
		if (*cmd == ':')
			continue;
		else if (*cmd == 'h') {		/* remove trailing path */
			if ((aptr = FUNC13(tmp, '/')) != NULL)
				*aptr = '\0';
		} else if (*cmd == 't') {	/* remove leading path */
			if ((aptr = FUNC13(tmp, '/')) != NULL) {
				aptr = FUNC10(aptr + 1);
				FUNC2(tmp);
				tmp = aptr;
			}
		} else if (*cmd == 'r') {	/* remove trailing suffix */
			if ((aptr = FUNC13(tmp, '.')) != NULL)
				*aptr = '\0';
		} else if (*cmd == 'e') {	/* remove all but suffix */
			if ((aptr = FUNC13(tmp, '.')) != NULL) {
				aptr = FUNC10(aptr);
				FUNC2(tmp);
				tmp = aptr;
			}
		} else if (*cmd == 'p')		/* print only */
			p_on = 1;
		else if (*cmd == 'g')
			g_on = 2;
		else if (*cmd == 's' || *cmd == '&') {
			char *what, *with, delim;
			size_t len, from_len;
			size_t size;

			if (*cmd == '&' && (from == NULL || to == NULL))
				continue;
			else if (*cmd == 's') {
				delim = *(++cmd), cmd++;
				size = 16;
				what = FUNC3(from, size * sizeof(*what));
				if (what == NULL) {
					FUNC2(from);
					FUNC2(tmp);
					return 0;
				}
				len = 0;
				for (; *cmd && *cmd != delim; cmd++) {
					if (*cmd == '\\' && cmd[1] == delim)
						cmd++;
					if (len >= size) {
						char *nwhat;
						nwhat = FUNC3(what,
						    (size <<= 1) *
						    sizeof(*nwhat));
						if (nwhat == NULL) {
							FUNC2(what);
							FUNC2(tmp);
							return 0;
						}
						what = nwhat;
					}
					what[len++] = *cmd;
				}
				what[len] = '\0';
				from = what;
				if (*what == '\0') {
					FUNC2(what);
					if (search) {
						from = FUNC10(search);
						if (from == NULL) {
							FUNC2(tmp);
							return 0;
						}
					} else {
						from = NULL;
						FUNC2(tmp);
						return -1;
					}
				}
				cmd++;	/* shift after delim */
				if (!*cmd)
					continue;

				size = 16;
				with = FUNC3(to, size * sizeof(*with));
				if (with == NULL) {
					FUNC2(to);
					FUNC2(tmp);
					return -1;
				}
				len = 0;
				from_len = FUNC11(from);
				for (; *cmd && *cmd != delim; cmd++) {
					if (len + from_len + 1 >= size) {
						char *nwith;
						size += from_len + 1;
						nwith = FUNC3(with,
						    size * sizeof(*nwith));
						if (nwith == NULL) {
							FUNC2(with);
							FUNC2(tmp);
							return -1;
						}
						with = nwith;
					}
					if (*cmd == '&') {
						/* safe */
						(void)FUNC9(&with[len], from);
						len += from_len;
						continue;
					}
					if (*cmd == '\\'
					    && (*(cmd + 1) == delim
						|| *(cmd + 1) == '&'))
						cmd++;
					with[len++] = *cmd;
				}
				with[len] = '\0';
				to = with;
			}

			aptr = FUNC0(tmp, from, to, g_on);
			if (aptr) {
				FUNC2(tmp);
				tmp = aptr;
			}
			g_on = 0;
		}
	}
	*result = tmp;
	return p_on? 2:1;
}