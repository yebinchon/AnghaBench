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
struct archive_string {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct archive_string*,char const) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char const*,size_t) ; 
 size_t FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void
FUNC4(struct archive_string *buf, const char *str, int in_shell)
{
	static const char meta[] = "\n \t'`\";&<>()|*?{}[]\\$!#^~";
	size_t len;

	while (*str != '\0') {
		if ((len = FUNC3(str, meta)) != 0) {
			FUNC2(buf, str, len);
			str += len;
		} else if (*str == '\n') {
			if (in_shell)
				FUNC1(buf, "\"\n\"");
			else
				FUNC1(buf, "\\n");
			++str;
		} else {
			FUNC0(buf, '\\');
			FUNC0(buf, *str);
			++str;
		}
	}
}