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

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 char* soap_prefix ; 
 char* urn_wfawlanconfig ; 
 struct wpabuf* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf const*) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,char*,char const*,...) ; 
 char* FUNC8 (struct wpabuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct wpabuf*,char*) ; 

__attribute__((used)) static struct wpabuf * FUNC10(const struct wpabuf *msg,
				       const char *name, const char *arg_name,
				       const char *path,
				       const struct sockaddr_in *dst,
				       char **len_ptr, char **body_ptr)
{
	unsigned char *encoded;
	size_t encoded_len;
	struct wpabuf *buf;

	if (msg) {
		encoded = FUNC0(FUNC5(msg), FUNC6(msg),
					&encoded_len);
		if (encoded == NULL)
			return NULL;
	} else {
		encoded = NULL;
		encoded_len = 0;
	}

	buf = FUNC4(1000 + encoded_len);
	if (buf == NULL) {
		FUNC3(encoded);
		return NULL;
	}

	FUNC7(buf,
		      "POST %s HTTP/1.1\r\n"
		      "Host: %s:%d\r\n"
		      "Content-Type: text/xml; charset=\"utf-8\"\r\n"
		      "Content-Length: ",
		      path, FUNC1(dst->sin_addr), FUNC2(dst->sin_port));

	*len_ptr = FUNC8(buf, 0);
	FUNC7(buf,
		      "        \r\n"
		      "SOAPACTION: \"%s#%s\"\r\n"
		      "\r\n",
		      urn_wfawlanconfig, name);

	*body_ptr = FUNC8(buf, 0);

	FUNC9(buf, soap_prefix);
	FUNC7(buf, "<u:%s xmlns:u=\"", name);
	FUNC9(buf, urn_wfawlanconfig);
	FUNC9(buf, "\">\n");
	if (encoded) {
		FUNC7(buf, "<%s>%s</%s>\n",
			      arg_name, (char *) encoded, arg_name);
		FUNC3(encoded);
	}

	return buf;
}