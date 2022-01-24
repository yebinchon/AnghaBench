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
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
#define  HTTP_BAD_REQUEST 132 
#define  HTTP_INTERNAL_SERVER_ERROR 131 
#define  HTTP_OK 130 
#define  HTTP_PRECONDITION_FAILED 129 
#define  HTTP_UNIMPLEMENTED 128 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC1(struct wpabuf *buf, enum http_reply_code code)
{
	FUNC0(buf, "HTTP/1.1 ");
	switch (code) {
	case HTTP_OK:
		FUNC0(buf, "200 OK\r\n");
		break;
	case HTTP_BAD_REQUEST:
		FUNC0(buf, "400 Bad request\r\n");
		break;
	case HTTP_PRECONDITION_FAILED:
		FUNC0(buf, "412 Precondition failed\r\n");
		break;
	case HTTP_UNIMPLEMENTED:
		FUNC0(buf, "501 Unimplemented\r\n");
		break;
	case HTTP_INTERNAL_SERVER_ERROR:
	default:
		FUNC0(buf, "500 Internal server error\r\n");
		break;
	}
}