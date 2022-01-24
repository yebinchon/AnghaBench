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
struct wpabuf {int dummy; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_addr; } ;
struct http_client {int dummy; } ;

/* Variables and functions */
 struct http_client* FUNC0 (struct sockaddr_in*,struct wpabuf*,size_t,void (*) (void*,struct http_client*,int),void*) ; 
 char* FUNC1 (char const*,struct sockaddr_in*,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 struct wpabuf* FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct http_client * FUNC10(const char *url,
				     struct wpabuf *req, size_t max_response,
				     void (*cb)(void *ctx,
						struct http_client *c,
						enum http_client_event event),
				     void *cb_ctx)
{
	struct sockaddr_in dst;
	struct http_client *c;
	char *u, *path;
	struct wpabuf *req_buf = NULL;

	if (FUNC6(url, "http://", 7) != 0)
		return NULL;
	u = FUNC1(url, &dst, &path);
	if (u == NULL)
		return NULL;

	if (req == NULL) {
		req_buf = FUNC7(FUNC5(url) + 1000);
		if (req_buf == NULL) {
			FUNC4(u);
			return NULL;
		}
		req = req_buf;
		FUNC9(req,
			      "GET %s HTTP/1.1\r\n"
			      "Cache-Control: no-cache\r\n"
			      "Pragma: no-cache\r\n"
			      "Accept: text/xml, application/xml\r\n"
			      "User-Agent: wpa_supplicant\r\n"
			      "Host: %s:%d\r\n"
			      "\r\n",
			      path, FUNC2(dst.sin_addr),
			      FUNC3(dst.sin_port));
	}
	FUNC4(u);

	c = FUNC0(&dst, req, max_response, cb, cb_ctx);
	if (c == NULL) {
		FUNC8(req_buf);
		return NULL;
	}

	return c;
}