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
struct eap_teap_pac {int /*<<< orphan*/  a_id_info_len; int /*<<< orphan*/  a_id_info; int /*<<< orphan*/  i_id_len; int /*<<< orphan*/  i_id; int /*<<< orphan*/  a_id_len; int /*<<< orphan*/  a_id; int /*<<< orphan*/  pac_info_len; int /*<<< orphan*/  pac_info; int /*<<< orphan*/  pac_opaque_len; int /*<<< orphan*/  pac_opaque; int /*<<< orphan*/  pac_key; int /*<<< orphan*/  pac_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_PAC_KEY_LEN ; 
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char**,char**,size_t*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,int,char*,...) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC4(struct eap_teap_pac *pac, char **buf,
				 char **pos, size_t *buf_len)
{
	int ret;

	ret = FUNC1(*pos, *buf + *buf_len - *pos,
			  "START\nPAC-Type=%d\n", pac->pac_type);
	if (FUNC2(*buf + *buf_len - *pos, ret))
		return -1;

	*pos += ret;
	FUNC0(buf, pos, buf_len, "PAC-Key",
		       pac->pac_key, EAP_TEAP_PAC_KEY_LEN, 0);
	FUNC0(buf, pos, buf_len, "PAC-Opaque",
		       pac->pac_opaque, pac->pac_opaque_len, 0);
	FUNC0(buf, pos, buf_len, "PAC-Info",
		       pac->pac_info, pac->pac_info_len, 0);
	FUNC0(buf, pos, buf_len, "A-ID",
		       pac->a_id, pac->a_id_len, 0);
	FUNC0(buf, pos, buf_len, "I-ID",
		       pac->i_id, pac->i_id_len, 1);
	FUNC0(buf, pos, buf_len, "A-ID-Info",
		       pac->a_id_info, pac->a_id_info_len, 1);
	if (!(*buf)) {
		FUNC3(MSG_DEBUG, "EAP-TEAP: No memory for PAC data");
		return -1;
	}
	ret = FUNC1(*pos, *buf + *buf_len - *pos, "END\n");
	if (FUNC2(*buf + *buf_len - *pos, ret))
		return -1;
	*pos += ret;

	return 0;
}