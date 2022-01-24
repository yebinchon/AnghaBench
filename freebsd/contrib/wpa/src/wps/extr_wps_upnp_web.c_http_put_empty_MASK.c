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
 char* http_connection_close ; 
 int /*<<< orphan*/  FUNC0 (struct wpabuf*,int) ; 
 char* http_server_hdr ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC2(struct wpabuf *buf, enum http_reply_code code)
{
	FUNC0(buf, code);
	FUNC1(buf, http_server_hdr);
	FUNC1(buf, http_connection_close);
	FUNC1(buf, "Content-Length: 0\r\n"
		       "\r\n");
}