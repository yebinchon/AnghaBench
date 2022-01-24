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
typedef  int /*<<< orphan*/  u8 ;
struct wpabuf {int dummy; } ;
struct upnp_wps_device_sm {int dummy; } ;
struct subscription {int /*<<< orphan*/ * uuid; } ;
struct http_request {int dummy; } ;
typedef  int /*<<< orphan*/  str ;
typedef  enum http_reply_code { ____Placeholder_http_reply_code } http_reply_code ;

/* Variables and functions */
 int HTTP_BAD_REQUEST ; 
 int HTTP_INTERNAL_SERVER_ERROR ; 
 int /*<<< orphan*/  HTTP_OK ; 
 int HTTP_PRECONDITION_FAILED ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  UPNP_SUBSCRIBE_SEC ; 
 int /*<<< orphan*/  UPNP_WPS_DEVICE_EVENT_FILE ; 
 int UUID_LEN ; 
 char* FUNC0 (char*,int) ; 
 char* http_connection_close ; 
 int /*<<< orphan*/  FUNC1 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct http_request*) ; 
 char* FUNC5 (struct http_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct http_request*,struct wpabuf*) ; 
 char* http_server_hdr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 char* FUNC9 (char*,char) ; 
 int FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 struct subscription* FUNC12 (struct upnp_wps_device_sm*,int /*<<< orphan*/ *) ; 
 struct subscription* FUNC13 (struct upnp_wps_device_sm*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC15 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,...) ; 
 struct wpabuf* FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct wpabuf*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC20 (struct wpabuf*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC22(struct upnp_wps_device_sm *sm,
					   struct http_request *req,
					   const char *filename)
{
	struct wpabuf *buf;
	char *b;
	char *hdr = FUNC5(req);
	char *h;
	char *match;
	int match_len;
	char *end;
	int len;
	int got_nt = 0;
	u8 uuid[UUID_LEN];
	int got_uuid = 0;
	char *callback_urls = NULL;
	struct subscription *s = NULL;
	enum http_reply_code ret = HTTP_INTERNAL_SERVER_ERROR;

	buf = FUNC18(1000);
	if (buf == NULL) {
		FUNC4(req);
		return;
	}

	FUNC16(MSG_DEBUG, "WPS UPnP: HTTP SUBSCRIBE",
			  (u8 *) hdr, FUNC10(hdr));

	/* Parse/validate headers */
	h = hdr;
	/* First line: SUBSCRIBE /wps_event HTTP/1.1
	 * has already been parsed.
	 */
	if (FUNC8(filename, UPNP_WPS_DEVICE_EVENT_FILE) != 0) {
		ret = HTTP_PRECONDITION_FAILED;
		goto error;
	}
	FUNC17(MSG_DEBUG, "WPS UPnP: HTTP SUBSCRIBE for event");
	end = FUNC9(h, '\n');

	while (end) {
		/* Option line by option line */
		h = end + 1;
		end = FUNC9(h, '\n');
		if (end == NULL)
			break; /* no unterminated lines allowed */

		/* NT assures that it is our type of subscription;
		 * not used for a renewal.
		 **/
		match = "NT:";
		match_len = FUNC10(match);
		if (FUNC11(h, match, match_len) == 0) {
			h += match_len;
			while (*h == ' ' || *h == '\t')
				h++;
			match = "upnp:event";
			match_len = FUNC10(match);
			if (FUNC11(h, match, match_len) != 0) {
				ret = HTTP_BAD_REQUEST;
				goto error;
			}
			got_nt = 1;
			continue;
		}
		/* HOST should refer to us */
#if 0
		match = "HOST:";
		match_len = os_strlen(match);
		if (os_strncasecmp(h, match, match_len) == 0) {
			h += match_len;
			while (*h == ' ' || *h == '\t')
				h++;
			.....
		}
#endif
		/* CALLBACK gives one or more URLs for NOTIFYs
		 * to be sent as a result of the subscription.
		 * Each URL is enclosed in angle brackets.
		 */
		match = "CALLBACK:";
		match_len = FUNC10(match);
		if (FUNC11(h, match, match_len) == 0) {
			h += match_len;
			while (*h == ' ' || *h == '\t')
				h++;
			len = end - h;
			FUNC7(callback_urls);
			callback_urls = FUNC0(h, len);
			if (callback_urls == NULL) {
				ret = HTTP_INTERNAL_SERVER_ERROR;
				goto error;
			}
			if (len > 0 && callback_urls[len - 1] == '\r')
				callback_urls[len - 1] = '\0';
			continue;
		}
		/* SID is only for renewal */
		match = "SID:";
		match_len = FUNC10(match);
		if (FUNC11(h, match, match_len) == 0) {
			h += match_len;
			while (*h == ' ' || *h == '\t')
				h++;
			match = "uuid:";
			match_len = FUNC10(match);
			if (FUNC11(h, match, match_len) != 0) {
				ret = HTTP_BAD_REQUEST;
				goto error;
			}
			h += match_len;
			while (*h == ' ' || *h == '\t')
				h++;
			if (FUNC15(h, uuid)) {
				ret = HTTP_BAD_REQUEST;
				goto error;
			}
			got_uuid = 1;
			continue;
		}
		/* TIMEOUT is requested timeout, but apparently we can
		 * just ignore this.
		 */
	}

	if (got_uuid) {
		/* renewal */
		FUNC17(MSG_DEBUG, "WPS UPnP: Subscription renewal");
		if (callback_urls) {
			ret = HTTP_BAD_REQUEST;
			goto error;
		}
		s = FUNC12(sm, uuid);
		if (s == NULL) {
			char str[80];
			FUNC14(uuid, str, sizeof(str));
			FUNC17(MSG_DEBUG, "WPS UPnP: Could not find "
				   "SID %s", str);
			ret = HTTP_PRECONDITION_FAILED;
			goto error;
		}
	} else if (callback_urls) {
		FUNC17(MSG_DEBUG, "WPS UPnP: New subscription");
		if (!got_nt) {
			ret = HTTP_PRECONDITION_FAILED;
			goto error;
		}
		s = FUNC13(sm, callback_urls);
		if (s == NULL) {
			ret = HTTP_INTERNAL_SERVER_ERROR;
			goto error;
		}
	} else {
		ret = HTTP_PRECONDITION_FAILED;
		goto error;
	}

	/* success */
	FUNC3(buf, HTTP_OK);
	FUNC21(buf, http_server_hdr);
	FUNC21(buf, http_connection_close);
	FUNC21(buf, "Content-Length: 0\r\n");
	FUNC21(buf, "SID: uuid:");
	/* subscription id */
	b = FUNC20(buf, 0);
	FUNC14(s->uuid, b, 80);
	FUNC17(MSG_DEBUG, "WPS UPnP: Assigned SID %s", b);
	FUNC20(buf, FUNC10(b));
	FUNC21(buf, "\r\n");
	FUNC19(buf, "Timeout: Second-%d\r\n", UPNP_SUBSCRIBE_SEC);
	FUNC1(buf);
	/* And empty line to terminate header: */
	FUNC21(buf, "\r\n");

	FUNC7(callback_urls);
	FUNC6(req, buf);
	return;

error:
	/* Per UPnP spec:
	* Errors
	* Incompatible headers
	*   400 Bad Request. If SID header and one of NT or CALLBACK headers
	*     are present, the publisher must respond with HTTP error
	*     400 Bad Request.
	* Missing or invalid CALLBACK
	*   412 Precondition Failed. If CALLBACK header is missing or does not
	*     contain a valid HTTP URL, the publisher must respond with HTTP
	*     error 412 Precondition Failed.
	* Invalid NT
	*   412 Precondition Failed. If NT header does not equal upnp:event,
	*     the publisher must respond with HTTP error 412 Precondition
	*     Failed.
	* [For resubscription, use 412 if unknown uuid].
	* Unable to accept subscription
	*   5xx. If a publisher is not able to accept a subscription (such as
	*     due to insufficient resources), it must respond with a
	*     HTTP 500-series error code.
	*   599 Too many subscriptions (not a standard HTTP error)
	*/
	FUNC17(MSG_DEBUG, "WPS UPnP: SUBSCRIBE failed - return %d", ret);
	FUNC2(buf, ret);
	FUNC6(req, buf);
	FUNC7(callback_urls);
}