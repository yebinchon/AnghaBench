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
typedef  char u8 ;

/* Variables and functions */
 char* FUNC0 (char const*,size_t) ; 
 scalar_t__ FUNC1 (char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 size_t FUNC4 (char const*) ; 
 char* FUNC5 (char const*,char) ; 
 size_t FUNC6 (char*,size_t,char*) ; 

char * FUNC7(const char *value, size_t *len)
{
	if (*value == '"') {
		const char *pos;
		char *str;
		value++;
		pos = FUNC5(value, '"');
		if (pos == NULL || pos[1] != '\0')
			return NULL;
		*len = pos - value;
		str = FUNC0(value, *len);
		if (str == NULL)
			return NULL;
		return str;
	} else if (*value == 'P' && value[1] == '"') {
		const char *pos;
		char *tstr, *str;
		size_t tlen;
		value += 2;
		pos = FUNC5(value, '"');
		if (pos == NULL || pos[1] != '\0')
			return NULL;
		tlen = pos - value;
		tstr = FUNC0(value, tlen);
		if (tstr == NULL)
			return NULL;

		str = FUNC3(tlen + 1);
		if (str == NULL) {
			FUNC2(tstr);
			return NULL;
		}

		*len = FUNC6((u8 *) str, tlen + 1, tstr);
		FUNC2(tstr);

		return str;
	} else {
		u8 *str;
		size_t tlen, hlen = FUNC4(value);
		if (hlen & 1)
			return NULL;
		tlen = hlen / 2;
		str = FUNC3(tlen + 1);
		if (str == NULL)
			return NULL;
		if (FUNC1(value, str, tlen)) {
			FUNC2(str);
			return NULL;
		}
		str[tlen] = '\0';
		*len = tlen;
		return (char *) str;
	}
}