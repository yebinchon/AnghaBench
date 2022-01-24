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
struct eap_teap_pac {struct eap_teap_pac* next; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ FUNC0 (struct eap_teap_pac*,char**,char**,size_t*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int) ; 
 int /*<<< orphan*/  pac_file_hdr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,char const*) ; 

int FUNC7(struct eap_sm *sm, struct eap_teap_pac *pac_root,
		      const char *pac_file)
{
	struct eap_teap_pac *pac;
	int ret, count = 0;
	char *buf, *pos;
	size_t buf_len;

	if (!pac_file)
		return -1;

	buf_len = 1024;
	pos = buf = FUNC3(buf_len);
	if (!buf)
		return -1;

	ret = FUNC4(pos, buf + buf_len - pos, "%s\n", pac_file_hdr);
	if (FUNC5(buf + buf_len - pos, ret)) {
		FUNC2(buf);
		return -1;
	}
	pos += ret;

	pac = pac_root;
	while (pac) {
		if (FUNC0(pac, &buf, &pos, &buf_len)) {
			FUNC2(buf);
			return -1;
		}
		count++;
		pac = pac->next;
	}

	if (FUNC1(sm, pac_file, buf, pos - buf)) {
		FUNC2(buf);
		return -1;
	}

	FUNC6(MSG_DEBUG, "EAP-TEAP: Wrote %d PAC entries into '%s'",
		   count, pac_file);

	return 0;
}