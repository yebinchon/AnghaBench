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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const,...) ; 
 int /*<<< orphan*/  FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC4 (char const*,char**,int) ; 
 char FUNC5 (char const) ; 

__attribute__((used)) static int
FUNC6(const char **pp, char *fmt, int *width_p, int *value_p, char *name,
	   int n_name, int *error_p, int *suppress_p)
{
	const char *p = *pp;
	char *intendp;

	int something = 0;

	enum {
		BETWEEN_FIELDS,
		START_FIELD,
		GET_FIELD,
		DONE,
	} state;

	int value = 0;
	int field_size;		/* Default to byte field type... */
	int field_width;	/* 1 byte wide */
	int is_error = 0;
	int suppress = 0;

	field_size = 8;		/* Default to byte field type... */
	*fmt = 'i';
	field_width = 1;	/* 1 byte wide */
	if (name != NULL)
		*name = '\0';

	state = BETWEEN_FIELDS;

	while (state != DONE) {
		switch(state) {
		case BETWEEN_FIELDS:
			if (*p == '\0')
				state = DONE;
			else if (FUNC2(*p))
				p++;
			else if (*p == '#') {
				while (*p && *p != '\n')
					p++;
				if (*p != '\0')
					p++;
			} else if (*p == '{') {
				int i = 0;

				p++;

				while (*p && *p != '}') {
					if(name && i < n_name) {
						name[i] = *p;
						i++;
					}
					p++;
				}

				if(name && i < n_name)
					name[i] = '\0';

				if (*p == '}')
					p++;
			} else if (*p == '*') {
				p++;
				suppress = 1;
			} else if (FUNC3(*p)) {
				something = 1;
				value = FUNC4(p, &intendp, 16);
				p = intendp;
				state = START_FIELD;
			} else if (FUNC5(*p) == 'v') {
				p++;
				something = 2;
				value = *value_p;
				state = START_FIELD;
			} else if (FUNC5(*p) == 'i') {
				/*
				 * Try to work without the "v".
				 */
				something = 2;
				value = *value_p;
				p++;

				*fmt = 'i';
				field_size = 8;
				field_width = FUNC4(p, &intendp, 10);
				p = intendp;
				state = DONE;

			} else if (FUNC5(*p) == 't') {
				/*
				 * XXX: B can't work: Sees the 'b' as a
				 * hex digit in "isxdigit".  try "t" for
				 * bit field.
				 */
				something = 2;
				value = *value_p;
				p++;

				*fmt = 'b';
				field_size = 1;
				field_width = FUNC4(p, &intendp, 10);
				p = intendp;
				state = DONE;
			} else if (FUNC5(*p) == 's') {
				/* Seek */
				*fmt = 's';
				p++;
				if (FUNC5(*p) == 'v') {
					p++;
					something = 2;
					value = *value_p;
				} else {
					something = 1;
					value = FUNC4(p, &intendp, 0);
					p = intendp;
				}
				state = DONE;
			} else {
				FUNC0(stderr, "Invalid starting "
					"character: %c\n", *p);
				is_error = 1;
				state = DONE;
			}
			break;

		case START_FIELD:
			if (*p == ':') {
				p++;
				field_size = 1;		/* Default to bits
							   when specified */
				state = GET_FIELD;
			} else
				state = DONE;
			break;

		case GET_FIELD:
			if (FUNC1(*p)) {
				*fmt = 'b';
				field_size = 1;
				field_width = FUNC4(p, &intendp, 10);
				p = intendp;
				state = DONE;
			} else if (*p == 'i') {

				/* Integral (bytes) */
				p++;

				*fmt = 'i';
				field_size = 8;
				field_width = FUNC4(p, &intendp, 10);
				p = intendp;
				state = DONE;
			} else if (*p == 'b') {

				/* Bits */
				p++;

				*fmt = 'b';
				field_size = 1;
				field_width = FUNC4(p, &intendp, 10);
				p = intendp;
				state = DONE;
			} else {
				FUNC0(stderr, "Invalid startfield %c "
					"(%02x)\n", *p, *p);
				is_error = 1;
				state = DONE;
			}
			break;

		case DONE:
			break;
		}
	}

	if (is_error) {
		*error_p = 1;
		return (0);
	}

	*error_p = 0;
	*pp = p;
	*width_p = field_width * field_size;
	*value_p = value;
	*suppress_p = suppress;

	return (something);
}