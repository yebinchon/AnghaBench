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
typedef  int u16 ;
struct wpa_config_blob {size_t len; int /*<<< orphan*/ * data; } ;
struct eap_teap_pac {int pac_opaque_len; int pac_info_len; struct eap_teap_pac* next; void* pac_info; void* pac_opaque; int /*<<< orphan*/  pac_key; void* pac_type; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 void* EAP_TEAP_PAC_BINARY_FORMAT_VERSION ; 
 scalar_t__ EAP_TEAP_PAC_BINARY_MAGIC ; 
 int EAP_TEAP_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  MSG_INFO ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct wpa_config_blob* FUNC2 (struct eap_sm*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct eap_teap_pac*) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_teap_pac*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (char const*,size_t*) ; 
 scalar_t__ FUNC9 (char const*,char*,int) ; 
 struct eap_teap_pac* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC12(struct eap_sm *sm, struct eap_teap_pac **pac_root,
			  const char *pac_file)
{
	const struct wpa_config_blob *blob = NULL;
	u8 *buf, *end, *pos;
	size_t len, count = 0;
	struct eap_teap_pac *pac, *prev;

	*pac_root = NULL;

	if (!pac_file)
		return -1;

	if (FUNC9(pac_file, "blob://", 7) == 0) {
		blob = FUNC2(sm, pac_file + 7);
		if (!blob) {
			FUNC11(MSG_INFO,
				   "EAP-TEAP: No PAC blob '%s' - assume no PAC entries have been provisioned",
				   pac_file + 7);
			return 0;
		}
		buf = blob->data;
		len = blob->len;
	} else {
		buf = (u8 *) FUNC8(pac_file, &len);
		if (!buf) {
			FUNC11(MSG_INFO,
				   "EAP-TEAP: No PAC file '%s' - assume no PAC entries have been provisioned",
				   pac_file);
			return 0;
		}
	}

	if (len == 0) {
		if (!blob)
			FUNC5(buf);
		return 0;
	}

	if (len < 6 || FUNC1(buf) != EAP_TEAP_PAC_BINARY_MAGIC ||
	    FUNC0(buf + 4) != EAP_TEAP_PAC_BINARY_FORMAT_VERSION) {
		FUNC11(MSG_INFO, "EAP-TEAP: Invalid PAC file '%s' (bin)",
			   pac_file);
		if (!blob)
			FUNC5(buf);
		return -1;
	}

	pac = prev = NULL;
	pos = buf + 6;
	end = buf + len;
	while (pos < end) {
		u16 val;

		if (end - pos < 2 + EAP_TEAP_PAC_KEY_LEN + 2 + 2) {
			pac = NULL;
			goto parse_fail;
		}

		pac = FUNC10(sizeof(*pac));
		if (!pac)
			goto parse_fail;

		pac->pac_type = FUNC0(pos);
		pos += 2;
		FUNC6(pac->pac_key, pos, EAP_TEAP_PAC_KEY_LEN);
		pos += EAP_TEAP_PAC_KEY_LEN;
		val = FUNC0(pos);
		pos += 2;
		if (val > end - pos)
			goto parse_fail;
		pac->pac_opaque_len = val;
		pac->pac_opaque = FUNC7(pos, pac->pac_opaque_len);
		if (!pac->pac_opaque)
			goto parse_fail;
		pos += pac->pac_opaque_len;
		if (end - pos < 2)
			goto parse_fail;
		val = FUNC0(pos);
		pos += 2;
		if (val > end - pos)
			goto parse_fail;
		pac->pac_info_len = val;
		pac->pac_info = FUNC7(pos, pac->pac_info_len);
		if (!pac->pac_info)
			goto parse_fail;
		pos += pac->pac_info_len;
		FUNC4(pac);

		count++;
		if (prev)
			prev->next = pac;
		else
			*pac_root = pac;
		prev = pac;
	}

	if (!blob)
		FUNC5(buf);

	FUNC11(MSG_DEBUG, "EAP-TEAP: Read %lu PAC entries from '%s' (bin)",
		   (unsigned long) count, pac_file);

	return 0;

parse_fail:
	FUNC11(MSG_INFO, "EAP-TEAP: Failed to parse PAC file '%s' (bin)",
		   pac_file);
	if (!blob)
		FUNC5(buf);
	if (pac)
		FUNC3(pac);
	return -1;
}