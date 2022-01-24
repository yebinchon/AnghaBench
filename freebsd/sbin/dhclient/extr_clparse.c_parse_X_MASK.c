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
typedef  int /*<<< orphan*/  u_int8_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int COLON ; 
 int NUMBER ; 
 int NUMBER_OR_NAME ; 
 int STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int) ; 
 int FUNC2 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (char*) ; 

unsigned
FUNC7(FILE *cfile, u_int8_t *buf, unsigned max)
{
	int	 token;
	char	*val;
	unsigned len;

	token = FUNC4(&val, cfile);
	if (token == NUMBER_OR_NAME || token == NUMBER) {
		len = 0;
		do {
			token = FUNC2(&val, cfile);
			if (token != NUMBER && token != NUMBER_OR_NAME) {
				FUNC3("expecting hexadecimal constant.");
				FUNC5(cfile);
				return (0);
			}
			FUNC0(&buf[len], val, 16, 8);
			if (len++ > max) {
				FUNC3("hexadecimal constant too long.");
				FUNC5(cfile);
				return (0);
			}
			token = FUNC4(&val, cfile);
			if (token == COLON)
				token = FUNC2(&val, cfile);
		} while (token == COLON);
		val = (char *)buf;
	} else if (token == STRING) {
		token = FUNC2(&val, cfile);
		len = FUNC6(val);
		if (len + 1 > max) {
			FUNC3("string constant too long.");
			FUNC5(cfile);
			return (0);
		}
		FUNC1(buf, val, len + 1);
	} else {
		FUNC3("expecting string or hexadecimal data");
		FUNC5(cfile);
		return (0);
	}
	return (len);
}