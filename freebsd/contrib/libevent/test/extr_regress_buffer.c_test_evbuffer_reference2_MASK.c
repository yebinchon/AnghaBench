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
struct evbuffer {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int EVBUFFER_CHAIN_SIZE ; 
 int MIN_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evbuffer*) ; 
 int FUNC5 (struct evbuffer*) ; 
 struct evbuffer* FUNC6 () ; 
 scalar_t__ FUNC7 (struct evbuffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct evbuffer*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char,int) ; 
 int /*<<< orphan*/  no_cleanup ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void
FUNC11(void *ptr)
{
	struct evbuffer *buf;
	static char data[4096];
	int data_len = MIN_BUFFER_SIZE-EVBUFFER_CHAIN_SIZE-10;
	char *str;
	int len;

	FUNC9(data, 'P', sizeof(data));
	buf = FUNC6();
	FUNC0(buf, data, data_len);
	FUNC8(buf);
	FUNC3(buf, 100);
	FUNC8(buf);
	FUNC2(buf, "2", 1, no_cleanup, NULL);
	FUNC8(buf);
	FUNC1(buf, "3");
	FUNC8(buf);

	len = FUNC5(buf);
	FUNC10(len == data_len+2);
	str = (char *)FUNC7(buf, -1);
	FUNC10(str[len-3] == 'P');
	FUNC10(str[len-2] == '2');
	FUNC10(str[len-1] == '3');
end:
	FUNC4(buf);
}