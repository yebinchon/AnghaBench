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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVBUFFER_EOL_LF ; 
 int /*<<< orphan*/  EV_READ ; 
 int /*<<< orphan*/  EV_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bufferevent*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bufferevent*) ; 
 struct evbuffer* FUNC7 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC8 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC9 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC11 (struct evbuffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int renegotiate_at ; 
 int /*<<< orphan*/  FUNC13 (void*,char*) ; 
 int /*<<< orphan*/  test_is_done ; 

__attribute__((used)) static void
FUNC14(struct bufferevent *bev, void *ctx)
{
	struct evbuffer *b = FUNC7(bev);
	char *line;
	int n;
	line = FUNC11(b, NULL, EVBUFFER_EOL_LF);
	if (! line)
		return;
	n = FUNC3(line);
	if (n <= 0)
		FUNC2(("Bad number: %s", line));
	FUNC12(line);
	FUNC1(("The number was %d", n));
	if (n == 1001) {
		++test_is_done;
		FUNC6(bev); /* Should trigger close on other side. */
		return;
	}
	if (!FUNC13(ctx, "client") && n == renegotiate_at) {
		FUNC0(FUNC9(bev));
	}
	++n;
	FUNC10(FUNC8(bev),
	    "%d\n", n);
	FUNC1(("Done reading; now writing."));
	FUNC5(bev, EV_WRITE);
	FUNC4(bev, EV_READ);
}