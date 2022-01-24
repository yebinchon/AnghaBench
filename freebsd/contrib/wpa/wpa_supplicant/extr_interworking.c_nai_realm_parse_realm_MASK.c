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
typedef  int u8 ;
typedef  int u16 ;
struct nai_realm_eap {int dummy; } ;
struct nai_realm {int eap_count; int /*<<< orphan*/ * eap; int /*<<< orphan*/ * realm; int /*<<< orphan*/  encoding; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/ * FUNC1 (int const*,int) ; 
 int* FUNC2 (int /*<<< orphan*/ *,int const*,int const*) ; 
 int /*<<< orphan*/ * FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static const u8 * FUNC6(struct nai_realm *r, const u8 *pos,
					const u8 *end)
{
	u16 len;
	const u8 *f_end;
	u8 realm_len, e;

	if (end - pos < 4) {
		FUNC5(MSG_DEBUG, "No room for NAI Realm Data "
			   "fixed fields");
		return NULL;
	}

	len = FUNC0(pos); /* NAI Realm Data field Length */
	pos += 2;
	if (len > end - pos || len < 3) {
		FUNC5(MSG_DEBUG, "No room for NAI Realm Data "
			   "(len=%u; left=%u)",
			   len, (unsigned int) (end - pos));
		return NULL;
	}
	f_end = pos + len;

	r->encoding = *pos++;
	realm_len = *pos++;
	if (realm_len > f_end - pos) {
		FUNC5(MSG_DEBUG, "No room for NAI Realm "
			   "(len=%u; left=%u)",
			   realm_len, (unsigned int) (f_end - pos));
		return NULL;
	}
	FUNC4(MSG_DEBUG, "NAI Realm", pos, realm_len);
	r->realm = FUNC1(pos, realm_len);
	if (r->realm == NULL)
		return NULL;
	pos += realm_len;

	if (f_end - pos < 1) {
		FUNC5(MSG_DEBUG, "No room for EAP Method Count");
		return NULL;
	}
	r->eap_count = *pos++;
	FUNC5(MSG_DEBUG, "EAP Count: %u", r->eap_count);
	if (r->eap_count * 3 > f_end - pos) {
		FUNC5(MSG_DEBUG, "No room for EAP Methods");
		return NULL;
	}
	r->eap = FUNC3(r->eap_count, sizeof(struct nai_realm_eap));
	if (r->eap == NULL)
		return NULL;

	for (e = 0; e < r->eap_count; e++) {
		pos = FUNC2(&r->eap[e], pos, f_end);
		if (pos == NULL)
			return NULL;
	}

	return f_end;
}