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
struct http_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct http_request*,struct wpabuf*) ; 
 struct wpabuf* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC5(struct http_request *req)
{
	struct wpabuf *buf;
	buf = FUNC3(200);
	if (buf == NULL) {
		FUNC1(req);
		return;
	}

	FUNC4(buf,
		       "HTTP/1.1 404 Not Found\r\n"
		       "Server: unspecified, UPnP/1.0, unspecified\r\n"
		       "Connection: close\r\n");
	FUNC0(buf);
	FUNC4(buf, "\r\n");
	FUNC2(req, buf);
}