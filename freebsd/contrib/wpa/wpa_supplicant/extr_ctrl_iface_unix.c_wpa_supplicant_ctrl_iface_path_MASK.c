#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wpa_supplicant {char* ifname; TYPE_1__* conf; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ctrl_interface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int FUNC2 (char*,size_t,char*,char*,char*) ; 
 scalar_t__ FUNC3 (size_t,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* FUNC7 (char*,char*) ; 

__attribute__((used)) static char * FUNC8(struct wpa_supplicant *wpa_s)
{
	char *buf;
	size_t len;
	char *pbuf, *dir = NULL;
	int res;

	if (wpa_s->conf->ctrl_interface == NULL)
		return NULL;

	pbuf = FUNC4(wpa_s->conf->ctrl_interface);
	if (pbuf == NULL)
		return NULL;
	if (FUNC6(pbuf, "DIR=", 4) == 0) {
		char *gid_str;
		dir = pbuf + 4;
		gid_str = FUNC7(dir, " GROUP=");
		if (gid_str)
			*gid_str = '\0';
	} else
		dir = pbuf;

	len = FUNC5(dir) + FUNC5(wpa_s->ifname) + 2;
	buf = FUNC1(len);
	if (buf == NULL) {
		FUNC0(pbuf);
		return NULL;
	}

	res = FUNC2(buf, len, "%s/%s", dir, wpa_s->ifname);
	if (FUNC3(len, res)) {
		FUNC0(pbuf);
		FUNC0(buf);
		return NULL;
	}
#ifdef __CYGWIN__
	{
		/* Windows/WinPcap uses interface names that are not suitable
		 * as a file name - convert invalid chars to underscores */
		char *pos = buf;
		while (*pos) {
			if (*pos == '\\')
				*pos = '_';
			pos++;
		}
	}
#endif /* __CYGWIN__ */
	FUNC0(pbuf);
	return buf;
}