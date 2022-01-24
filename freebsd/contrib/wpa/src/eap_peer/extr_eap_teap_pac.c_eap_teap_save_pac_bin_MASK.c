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
struct eap_teap_pac {int pac_opaque_len; int pac_info_len; int pac_type; struct eap_teap_pac* next; int /*<<< orphan*/  pac_info; int /*<<< orphan*/  pac_opaque; int /*<<< orphan*/  pac_key; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int EAP_TEAP_PAC_BINARY_FORMAT_VERSION ; 
 int /*<<< orphan*/  EAP_TEAP_PAC_BINARY_MAGIC ; 
 int EAP_TEAP_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct eap_sm*,char const*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned long,char const*) ; 

int FUNC7(struct eap_sm *sm, struct eap_teap_pac *pac_root,
			  const char *pac_file)
{
	size_t len, count = 0;
	struct eap_teap_pac *pac;
	u8 *buf, *pos;

	len = 6;
	pac = pac_root;
	while (pac) {
		if (pac->pac_opaque_len > 65535 ||
		    pac->pac_info_len > 65535)
			return -1;
		len += 2 + EAP_TEAP_PAC_KEY_LEN + 2 + pac->pac_opaque_len +
			2 + pac->pac_info_len;
		pac = pac->next;
	}

	buf = FUNC4(len);
	if (!buf)
		return -1;

	pos = buf;
	FUNC1(pos, EAP_TEAP_PAC_BINARY_MAGIC);
	pos += 4;
	FUNC0(pos, EAP_TEAP_PAC_BINARY_FORMAT_VERSION);
	pos += 2;

	pac = pac_root;
	while (pac) {
		FUNC0(pos, pac->pac_type);
		pos += 2;
		FUNC5(pos, pac->pac_key, EAP_TEAP_PAC_KEY_LEN);
		pos += EAP_TEAP_PAC_KEY_LEN;
		FUNC0(pos, pac->pac_opaque_len);
		pos += 2;
		FUNC5(pos, pac->pac_opaque, pac->pac_opaque_len);
		pos += pac->pac_opaque_len;
		FUNC0(pos, pac->pac_info_len);
		pos += 2;
		FUNC5(pos, pac->pac_info, pac->pac_info_len);
		pos += pac->pac_info_len;

		pac = pac->next;
		count++;
	}

	if (FUNC2(sm, pac_file, (char *) buf, len)) {
		FUNC3(buf);
		return -1;
	}

	FUNC6(MSG_DEBUG, "EAP-TEAP: Wrote %lu PAC entries into '%s' (bin)",
		   (unsigned long) count, pac_file);

	return 0;
}