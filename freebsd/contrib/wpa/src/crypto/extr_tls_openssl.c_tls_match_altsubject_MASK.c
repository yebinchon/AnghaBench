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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 int GEN_DNS ; 
 int GEN_EMAIL ; 
 int GEN_URI ; 
 int /*<<< orphan*/  MSG_INFO ; 
 char* FUNC0 (char const*,char) ; 
 size_t FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC5(X509 *cert, const char *match)
{
	int type;
	const char *pos, *end;
	size_t len;

	pos = match;
	do {
		if (FUNC2(pos, "EMAIL:", 6) == 0) {
			type = GEN_EMAIL;
			pos += 6;
		} else if (FUNC2(pos, "DNS:", 4) == 0) {
			type = GEN_DNS;
			pos += 4;
		} else if (FUNC2(pos, "URI:", 4) == 0) {
			type = GEN_URI;
			pos += 4;
		} else {
			FUNC4(MSG_INFO, "TLS: Invalid altSubjectName "
				   "match '%s'", pos);
			return 0;
		}
		end = FUNC0(pos, ';');
		while (end) {
			if (FUNC2(end + 1, "EMAIL:", 6) == 0 ||
			    FUNC2(end + 1, "DNS:", 4) == 0 ||
			    FUNC2(end + 1, "URI:", 4) == 0)
				break;
			end = FUNC0(end + 1, ';');
		}
		if (end)
			len = end - pos;
		else
			len = FUNC1(pos);
		if (FUNC3(cert, type, pos, len) > 0)
			return 1;
		pos = end + 1;
	} while (end);

	return 0;
}