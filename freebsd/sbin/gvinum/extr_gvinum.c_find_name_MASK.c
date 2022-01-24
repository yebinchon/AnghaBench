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
struct gctl_req {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  GV_CFG_LEN ; 
#define  GV_TYPE_DRIVE 131 
#define  GV_TYPE_PLEX 130 
#define  GV_TYPE_SD 129 
#define  GV_TYPE_VOL 128 
 char* FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct gctl_req*) ; 
 struct gctl_req* FUNC3 () ; 
 char* FUNC4 (struct gctl_req*) ; 
 int /*<<< orphan*/  FUNC5 (struct gctl_req*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct gctl_req*,char*,int,char*) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*) ; 

__attribute__((used)) static char *
FUNC14(const char *prefix, int type, int namelen)
{
	struct gctl_req *req;
	char comment[1], buf[GV_CFG_LEN - 1], *sname, *ptr;
	const char *errstr, *name;
	int i, n, begin, len, conflict;
	char line[1024];

	comment[0] = '\0';

	/* Find a name. Fetch out configuration first. */
	req = FUNC3();
	FUNC5(req, "class", -1, "VINUM");
	FUNC5(req, "verb", -1, "getconfig");
	FUNC5(req, "comment", -1, comment);
	FUNC6(req, "config", sizeof(buf), buf);
	errstr = FUNC4(req);
	if (errstr != NULL) {
		FUNC13("can't get configuration: %s", errstr);
		return (NULL);
	}
	FUNC2(req);

	begin = 0;
	len = FUNC12(buf);
	i = 0;
	sname = FUNC7(namelen + 1);

	/* XXX: Max object setting? */
	for (n = 0; n < 10000; n++) {
		FUNC9(sname, namelen, "%s%d", prefix, n);
		conflict = 0;
		begin = 0;
		/* Loop through the configuration line by line. */
		for (i = 0; i < len; i++) {
			if (buf[i] == '\n' || buf[i] == '\0') {
				ptr = buf + begin;
				FUNC11(line, ptr, (i - begin) + 1);
				begin = i + 1;
				switch (type) {
				case GV_TYPE_DRIVE:
					name = FUNC0(line, "drive");
					break;
				case GV_TYPE_VOL:
					name = FUNC0(line, "volume");
					break;
				case GV_TYPE_PLEX:
				case GV_TYPE_SD:
					name = FUNC0(line, "name");
					break;
				default:
					FUNC8("Invalid type given\n");
					continue;
				}
				if (name == NULL)
					continue;
				if (!FUNC10(sname, name)) {
					conflict = 1;
					/* XXX: Could quit the loop earlier. */
				}
			}
		}
		if (!conflict)
			return (sname);
	}
	FUNC1(sname);
	return (NULL);
}