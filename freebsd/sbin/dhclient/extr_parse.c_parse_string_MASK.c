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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int STRING ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int FUNC4 (char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*) ; 

char *
FUNC9(FILE *cfile)
{
	char *val, *s;
	size_t valsize;
	int token;

	token = FUNC4(&val, cfile);
	if (token != STRING) {
		FUNC6("filename must be a string");
		FUNC7(cfile);
		return (NULL);
	}
	valsize = FUNC8(val) + 1;
	s = FUNC2(valsize);
	if (!s)
		FUNC0("no memory for string %s.", val);
	FUNC3(s, val, valsize);

	if (!FUNC5(cfile)) {
		FUNC1(s);
		return (NULL);
	}
	return (s);
}