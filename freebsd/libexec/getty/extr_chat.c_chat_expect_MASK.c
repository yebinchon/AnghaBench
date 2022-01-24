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
 int CHATDEBUG_EXPECT ; 
 int CHATDEBUG_RECEIVE ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ alarmed ; 
 int /*<<< orphan*/  chat_alarm ; 
 int chat_debug ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int
FUNC13(const char *str)
{
	int len, r = 0;

	if (chat_debug & CHATDEBUG_EXPECT)
		FUNC12(LOG_DEBUG, "chat_expect '%s'", FUNC3(str, FUNC11(str)));

	if ((len = FUNC11(str)) > 0) {
		int i = 0;
		char * got;

		if ((got = FUNC5(len + 1)) == NULL)
			r = 1;
		else {

			FUNC8(got, 0, len+1);
			FUNC0(chat_alarm);
			alarmed = 0;

			while (r == 0 && i < len) {
				if (alarmed)
					r = 3;
				else {
					unsigned char ch;

					if (FUNC9(STDIN_FILENO, &ch, 1) == 1) {

						if (chat_debug & CHATDEBUG_RECEIVE)
							FUNC12(LOG_DEBUG, "chat_recv '%s' m=%d",
								FUNC2(NULL, ch), i);

						if (ch == str[i])
							got[i++] = ch;
						else if (i > 0) {
							int j = 1;

							/* See if we can resync on a
							 * partial match in our buffer
							 */
							while (j < i && FUNC6(got + j, str, i - j) != 0)
								j++;
							if (j < i)
								FUNC7(got, got + j, i - j);
							i -= j;
						}
					} else
						r = alarmed ? 3 : 2;
				}
			}
			FUNC0(0);
        		FUNC1();
        		alarmed = 0;
        		FUNC4(got);
		}
	}

	if (chat_debug & CHATDEBUG_EXPECT)
		FUNC12(LOG_DEBUG, "chat_expect %s", FUNC10(r));

	return r;
}