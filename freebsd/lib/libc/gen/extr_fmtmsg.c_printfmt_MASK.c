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
 int /*<<< orphan*/  INSERT_COLON ; 
 int /*<<< orphan*/  INSERT_NEWLINE ; 
 int /*<<< orphan*/  INSERT_SPACE ; 
 char const* MM_NULLACT ; 
 char const* MM_NULLLBL ; 
 char const* MM_NULLTAG ; 
 char const* MM_NULLTXT ; 
 char* FUNC0 (size_t) ; 
 char* FUNC1 (char*) ; 
 char const* FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 scalar_t__ FUNC5 (char const*) ; 

__attribute__((used)) static char *
FUNC6(char *msgverb, long class, const char *label, int sev,
    const char *text, const char *act, const char *tag)
{
	size_t size;
	char *comp, *output;
	const char *sevname;

	size = 32;
	if (label != MM_NULLLBL)
		size += FUNC5(label);
	if ((sevname = FUNC2(sev)) != NULL)
		size += FUNC5(sevname);
	if (text != MM_NULLTXT)
		size += FUNC5(text);
	if (act != MM_NULLACT)
		size += FUNC5(act);
	if (tag != MM_NULLTAG)
		size += FUNC5(tag);

	if ((output = FUNC0(size)) == NULL)
		return (NULL);
	*output = '\0';
	while ((comp = FUNC1(msgverb)) != NULL) {
		if (FUNC3(comp, "label") == 0 && label != MM_NULLLBL) {
			INSERT_COLON;
			FUNC4(output, label, size);
		} else if (FUNC3(comp, "severity") == 0 && sevname != NULL) {
			INSERT_COLON;
			FUNC4(output, FUNC2(sev), size);
		} else if (FUNC3(comp, "text") == 0 && text != MM_NULLTXT) {
			INSERT_COLON;
			FUNC4(output, text, size);
		} else if (FUNC3(comp, "action") == 0 && act != MM_NULLACT) {
			INSERT_NEWLINE;
			FUNC4(output, "TO FIX: ", size);
			FUNC4(output, act, size);
		} else if (FUNC3(comp, "tag") == 0 && tag != MM_NULLTAG) {
			INSERT_SPACE;
			FUNC4(output, tag, size);
		}
	}
	INSERT_NEWLINE;
	return (output);
}