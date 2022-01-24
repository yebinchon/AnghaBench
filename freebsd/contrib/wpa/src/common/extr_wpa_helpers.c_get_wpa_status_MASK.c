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
struct wpa_ctrl {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 size_t FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct wpa_ctrl*) ; 
 scalar_t__ FUNC5 (struct wpa_ctrl*,char*,int,char*,size_t*,int /*<<< orphan*/ *) ; 
 struct wpa_ctrl* FUNC6 (char const*) ; 

int FUNC7(const char *ifname, const char *field, char *obuf,
		   size_t obuf_size)
{
	struct wpa_ctrl *ctrl;
	char buf[4096];
	char *pos, *end;
	size_t len, flen;

	ctrl = FUNC6(ifname);
	if (ctrl == NULL)
		return -1;
	len = sizeof(buf);
	if (FUNC5(ctrl, "STATUS-NO_EVENTS", 16, buf, &len,
			     NULL) < 0) {
		FUNC4(ctrl);
		return -1;
	}
	FUNC4(ctrl);
	buf[len] = '\0';

	flen = FUNC2(field);
	pos = buf;
	while (pos + flen < buf + len) {
		if (pos > buf) {
			if (*pos != '\n') {
				pos++;
				continue;
			}
			pos++;
		}
		if (FUNC3(pos, field, flen) != 0 || pos[flen] != '=') {
			pos++;
			continue;
		}
		pos += flen + 1;
		end = FUNC1(pos, '\n');
		if (end == NULL)
			return -1;
		*end++ = '\0';
		if (end - pos > (int) obuf_size)
			return -1;
		FUNC0(obuf, pos, end - pos);
		return 0;
	}

	return -1;
}