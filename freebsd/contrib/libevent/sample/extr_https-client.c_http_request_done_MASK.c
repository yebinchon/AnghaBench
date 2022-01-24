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
struct evhttp_request {int dummy; } ;
struct bufferevent {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,char*,int) ; 
 int FUNC1 () ; 
 unsigned long FUNC2 (struct bufferevent*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct evhttp_request*) ; 
 int FUNC5 (struct evhttp_request*) ; 
 char* FUNC6 (struct evhttp_request*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC10(struct evhttp_request *req, void *ctx)
{
	char buffer[256];
	int nread;

	if (req == NULL) {
		/* If req is NULL, it means an error occurred, but
		 * sadly we are mostly left guessing what the error
		 * might have been.  We'll do our best... */
		struct bufferevent *bev = (struct bufferevent *) ctx;
		unsigned long oslerr;
		int printed_err = 0;
		int errcode = FUNC1();
		FUNC8(stderr, "some request failed - no idea which one though!\n");
		/* Print out the OpenSSL error queue that libevent
		 * squirreled away for us, if any. */
		while ((oslerr = FUNC2(bev))) {
			FUNC0(oslerr, buffer, sizeof(buffer));
			FUNC8(stderr, "%s\n", buffer);
			printed_err = 1;
		}
		/* If the OpenSSL error queue was empty, maybe it was a
		 * socket error; let's try printing that. */
		if (! printed_err)
			FUNC8(stderr, "socket error = %s (%d)\n",
				FUNC7(errcode),
				errcode);
		return;
	}

	FUNC8(stderr, "Response line: %d %s\n",
	    FUNC5(req),
	    FUNC6(req));

	while ((nread = FUNC3(FUNC4(req),
		    buffer, sizeof(buffer)))
	       > 0) {
		/* These are just arbitrary chunks of 256 bytes.
		 * They are not lines, so we can't treat them as such. */
		FUNC9(buffer, nread, 1, stdout);
	}
}