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
struct evhttp_uri {char* path; scalar_t__ fragment; scalar_t__ query; int /*<<< orphan*/  port; int /*<<< orphan*/  userinfo; scalar_t__ host; scalar_t__ scheme; } ;
struct evbuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct evbuffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct evbuffer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct evbuffer*) ; 
 size_t FUNC4 (struct evbuffer*) ; 
 struct evbuffer* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct evbuffer*,char*,size_t) ; 
 int /*<<< orphan*/  fragment ; 
 int /*<<< orphan*/  host ; 
 int /*<<< orphan*/  path ; 
 int /*<<< orphan*/  query ; 
 int /*<<< orphan*/  scheme ; 

char *
FUNC7(struct evhttp_uri *uri, char *buf, size_t limit)
{
	struct evbuffer *tmp = 0;
	size_t joined_size = 0;
	char *output = NULL;

#define URI_ADD_(f)	evbuffer_add(tmp, uri->f, strlen(uri->f))

	if (!uri || !buf || !limit)
		return NULL;

	tmp = FUNC5();
	if (!tmp)
		return NULL;

	if (uri->scheme) {
		URI_ADD_(scheme);
		FUNC1(tmp, ":", 1);
	}
	if (uri->host) {
		FUNC1(tmp, "//", 2);
		if (uri->userinfo)
			FUNC2(tmp,"%s@", uri->userinfo);
		URI_ADD_(host);
		if (uri->port >= 0)
			FUNC2(tmp,":%d", uri->port);

		if (uri->path && uri->path[0] != '/' && uri->path[0] != '\0')
			goto err;
	}

	if (uri->path)
		URI_ADD_(path);

	if (uri->query) {
		FUNC1(tmp, "?", 1);
		URI_ADD_(query);
	}

	if (uri->fragment) {
		FUNC1(tmp, "#", 1);
		URI_ADD_(fragment);
	}

	FUNC1(tmp, "\0", 1); /* NUL */

	joined_size = FUNC4(tmp);

	if (joined_size > limit) {
		/* It doesn't fit. */
		FUNC3(tmp);
		return NULL;
	}
       	FUNC6(tmp, buf, joined_size);

	output = buf;
err:
	FUNC3(tmp);

	return output;
#undef URI_ADD_
}