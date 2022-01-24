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
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  salt ;

/* Variables and functions */
 int FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 struct passwd* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (struct passwd*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (char*,char) ; 

__attribute__((used)) static const char *
FUNC9(void)
{
	struct passwd *pw;
	char *passwd, *p;
	size_t typelen;
	static char salt[32];

	if (salt[0] != '\0')
		return salt;
	FUNC6(salt, "xx", sizeof(salt));
	FUNC4();
	while ((pw = FUNC3()) != NULL) {
		passwd = FUNC5(pw);
		if (passwd[0] == '$' && (p = FUNC8(passwd+1, '$')) != NULL) {
			typelen = p - passwd + 1;
			FUNC6(salt, passwd, FUNC0(typelen, sizeof(salt)));
			FUNC2(passwd, FUNC7(passwd));
			goto out;
		}
	}
 out:
	FUNC1();
	return salt;
}