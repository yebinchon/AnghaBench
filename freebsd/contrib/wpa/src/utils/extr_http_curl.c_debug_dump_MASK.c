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
struct http_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_MSGDUMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*,char*) ; 

__attribute__((used)) static void FUNC5(struct http_ctx *ctx, const char *title,
		       const char *buf, size_t len)
{
	char *txt;
	size_t i;

	for (i = 0; i < len; i++) {
		if (buf[i] < 32 && buf[i] != '\t' && buf[i] != '\n' &&
		    buf[i] != '\r') {
			FUNC3(MSG_MSGDUMP, title, buf, len);
			return;
		}
	}

	txt = FUNC1(len + 1);
	if (txt == NULL)
		return;
	FUNC2(txt, buf, len);
	txt[len] = '\0';
	while (len > 0) {
		len--;
		if (txt[len] == '\n' || txt[len] == '\r')
			txt[len] = '\0';
		else
			break;
	}
	FUNC4(MSG_MSGDUMP, "%s[%s]", title, txt);
	FUNC0(txt);
}