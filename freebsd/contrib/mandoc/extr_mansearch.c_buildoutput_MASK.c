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
struct dbm_page {char* name; char* sect; char* arch; int /*<<< orphan*/  addr; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
#define  KEY_Nd 131 
#define  KEY_Nm 130 
#define  KEY_arch 129 
#define  KEY_sec 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t*,char const*,char*) ; 
 int FUNC5 (char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char**,char*,char const*,char const*,char*) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC9(size_t im, struct dbm_page *page)
{
	const char	*oldoutput, *sep, *input;
	char		*output, *newoutput, *value;
	size_t		 sz, i;

	switch (im) {
	case KEY_Nd:
		return FUNC8(page->desc);
	case KEY_Nm:
		input = page->name;
		break;
	case KEY_sec:
		input = page->sect;
		break;
	case KEY_arch:
		input = page->arch;
		if (input == NULL)
			input = "all\0";
		break;
	default:
		input = NULL;
		break;
	}

	if (input != NULL) {
		sz = FUNC5(input, 3) + 1;
		output = FUNC7(sz);
		i = 0;
		FUNC4(output, &i, input, " # ");
		output[i++] = '\0';
		FUNC0(i == sz);
		return output;
	}

	output = NULL;
	FUNC1(im - 2, page->addr);
	while ((value = FUNC2()) != NULL) {
		if (output == NULL) {
			oldoutput = "";
			sep = "";
		} else {
			oldoutput = output;
			sep = " # ";
		}
		FUNC6(&newoutput, "%s%s%s", oldoutput, sep, value);
		FUNC3(output);
		output = newoutput;
	}
	return output;
}