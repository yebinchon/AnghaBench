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
 int FALSE ; 
 int TRUE ; 
 void* FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 size_t FUNC2 (char const*) ; 
 char FUNC3 (char const) ; 

size_t
FUNC4(
	const char *	string,
	char *		field,
	size_t		fieldsize,
	char *		value,
	size_t		valuesize
	)
{
	int i;
	int j;
	int loop;
	size_t str_cnt;
	size_t val_cnt;

	/* we need at least one byte to work with to simplify */
	if (fieldsize < 1 || valuesize < 1)
		return 0;

	str_cnt = FUNC2(string);

	/* Parsing the field name */
	j = 0;
	loop = TRUE;
	for (i = 0; loop && i <= str_cnt; i++) {
		switch (string[i]) {

		case '\t': 	/* Tab */
		case '\n':	/* LF */
		case '\r':	/* CR */
		case ' ':  	/* Space */
			break;

		case '=':
			loop = FALSE;
			break;

		default:
			if (j < fieldsize)
				field[j++] = FUNC3(string[i]);
		}
	}

	j = FUNC0(j, fieldsize - 1);
	field[j] = '\0';

	/* Now parsing the value */
	value[0] = '\0';
	j = 0; 
	for (val_cnt = 0; i < str_cnt; i++) {
		if (string[i] > 0x0D && string[i] != ' ')
			val_cnt = FUNC0(j + 1, valuesize - 1);
		
		if (value[0] != '\0' ||
		    (string[i] > 0x0D && string[i] != ' ')) {
			if (j < valuesize)
				value[j++] = string[i];
		}
	}
	value[val_cnt] = '\0';

	if (value[0] == '"') {
		val_cnt--;
		FUNC1(value, &value[1], valuesize);
		if (val_cnt > 0 && value[val_cnt - 1] == '"') {
			val_cnt--;
			value[val_cnt] = '\0';
		}
	}

	return val_cnt;
}