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
typedef  int /*<<< orphan*/  len_buf ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
 int HTTP_OK ; 
 int /*<<< orphan*/  MSG_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 char* http_connection_close ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct http_request*,struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 unsigned int FUNC7 (char*) ; 
 char* soap_error_postfix ; 
 char* soap_error_prefix ; 
 char* soap_postfix ; 
 char* soap_prefix ; 
 char* urn_wfawlanconfig ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct wpabuf* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC11 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC12 (struct wpabuf*,char*,...) ; 
 char* FUNC13 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct wpabuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC16(struct http_request *req,
				      enum http_reply_code ret,
				      const char *action, int action_len,
				      const struct wpabuf *reply,
				      const char *replyname)
{
	struct wpabuf *buf;
	char *replydata;
	char *put_length_here = NULL;
	char *body_start = NULL;

	if (reply) {
		size_t len;
		replydata = (char *) FUNC0(FUNC10(reply),
						   FUNC11(reply), &len);
	} else
		replydata = NULL;

	/* Parameters of the response:
	 *      action(action_len) -- action we are responding to
	 *      replyname -- a name we need for the reply
	 *      replydata -- NULL or null-terminated string
	 */
	buf = FUNC9(1000 + (replydata ? FUNC7(replydata) : 0U) +
			   (action_len > 0 ? action_len * 2 : 0));
	if (buf == NULL) {
		FUNC8(MSG_INFO, "WPS UPnP: Cannot allocate reply to "
			   "POST");
		FUNC4(replydata);
		FUNC2(req);
		return;
	}

	/*
	 * Assuming we will be successful, put in the output header first.
	 * Note: we do not keep connections alive (and httpread does
	 * not support it)... therefore we must have Connection: close.
	 */
	if (ret == HTTP_OK) {
		FUNC15(buf,
			       "HTTP/1.1 200 OK\r\n"
			       "Content-Type: text/xml; "
			       "charset=\"utf-8\"\r\n");
	} else {
		FUNC12(buf, "HTTP/1.1 %d Error\r\n", ret);
	}
	FUNC15(buf, http_connection_close);

	FUNC15(buf, "Content-Length: ");
	/*
	 * We will paste the length in later, leaving some extra whitespace.
	 * HTTP code is supposed to be tolerant of extra whitespace.
	 */
	put_length_here = FUNC13(buf, 0);
	FUNC15(buf, "        \r\n");

	FUNC1(buf);

	/* terminating empty line */
	FUNC15(buf, "\r\n");

	body_start = FUNC13(buf, 0);

	if (ret == HTTP_OK) {
		FUNC15(buf, soap_prefix);
		FUNC15(buf, "<u:");
		FUNC14(buf, action, action_len);
		FUNC15(buf, "Response xmlns:u=\"");
		FUNC15(buf, urn_wfawlanconfig);
		FUNC15(buf, "\">\n");
		if (replydata && replyname) {
			/* TODO: might possibly need to escape part of reply
			 * data? ...
			 * probably not, unlikely to have ampersand(&) or left
			 * angle bracket (<) in it...
			 */
			FUNC12(buf, "<%s>", replyname);
			FUNC15(buf, replydata);
			FUNC12(buf, "</%s>\n", replyname);
		}
		FUNC15(buf, "</u:");
		FUNC14(buf, action, action_len);
		FUNC15(buf, "Response>\n");
		FUNC15(buf, soap_postfix);
	} else {
		/* Error case */
		FUNC15(buf, soap_prefix);
		FUNC15(buf, soap_error_prefix);
		FUNC12(buf, "<errorCode>%d</errorCode>\n", ret);
		FUNC15(buf, soap_error_postfix);
		FUNC15(buf, soap_postfix);
	}
	FUNC4(replydata);

	/* Now patch in the content length at the end */
	if (body_start && put_length_here) {
		int body_length = (char *) FUNC13(buf, 0) - body_start;
		char len_buf[10];
		FUNC6(len_buf, sizeof(len_buf), "%d", body_length);
		FUNC5(put_length_here, len_buf, FUNC7(len_buf));
	}

	FUNC3(req, buf);
}