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
struct wpa_config_blob {int len; scalar_t__ data; } ;
struct eap_teap_read_ctx {int buf_len; char* pos; char* end; int /*<<< orphan*/  buf; int /*<<< orphan*/  f; } ;
struct eap_sm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_INFO ; 
 struct wpa_config_blob* FUNC0 (struct eap_sm*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct eap_teap_read_ctx*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static int FUNC7(struct eap_sm *sm, const char *pac_file,
				  struct eap_teap_read_ctx *rc)
{
	FUNC4(rc, 0, sizeof(*rc));

	rc->buf_len = 2048;
	rc->buf = FUNC3(rc->buf_len);
	if (!rc->buf)
		return -1;

	if (FUNC5(pac_file, "blob://", 7) == 0) {
		const struct wpa_config_blob *blob;

		blob = FUNC0(sm, pac_file + 7);
		if (!blob) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: No PAC blob '%s' - assume no PAC entries have been provisioned",
				   pac_file + 7);
			FUNC2(rc->buf);
			return -1;
		}
		rc->pos = (char *) blob->data;
		rc->end = (char *) blob->data + blob->len;
	} else {
		rc->f = FUNC1(pac_file, "rb");
		if (!rc->f) {
			FUNC6(MSG_INFO,
				   "EAP-TEAP: No PAC file '%s' - assume no PAC entries have been provisioned",
				   pac_file);
			FUNC2(rc->buf);
			return -1;
		}
	}

	return 0;
}