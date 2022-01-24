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
 int CHATDEBUG_SEND ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 unsigned char PAUSE_CH ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ alarmed ; 
 int /*<<< orphan*/  chat_alarm ; 
 int chat_debug ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned char*,int) ; 

__attribute__((used)) static int
FUNC8(char const *str)
{
	int r = 0;

	if (chat_debug & CHATDEBUG_SEND)
		FUNC5(LOG_DEBUG, "chat_send '%s'", FUNC2(str, FUNC4(str)));

	if (*str) {
                FUNC0(chat_alarm);
                alarmed = 0;
                while (r == 0 && *str)
                {
                        unsigned char ch = (unsigned char)*str++;

                        if (alarmed)
        			r = 3;
                        else if (ch == PAUSE_CH)
				FUNC6(500000); /* 1/2 second */
			else  {
				FUNC6(10000);	/* be kind to modem */
                                if (FUNC7(STDOUT_FILENO, &ch, 1) != 1)
        		  		r = alarmed ? 3 : 2;
                        }
                }
                FUNC0(0);
                FUNC1();
                alarmed = 0;
	}

        if (chat_debug & CHATDEBUG_SEND)
          FUNC5(LOG_DEBUG, "chat_send %s", FUNC3(r));

        return r;
}