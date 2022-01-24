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
struct wpa_sm {TYPE_1__* ctx; } ;
typedef  enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
struct TYPE_2__ {int /*<<< orphan*/  msg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_WARNING ; 
 int WPA_ALG_NONE ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static int FUNC5(struct wpa_sm *sm,
					     int group_cipher,
					     int keylen, int maxkeylen,
					     int *key_rsc_len,
					     enum wpa_alg *alg)
{
	int klen;

	*alg = FUNC2(group_cipher);
	if (*alg == WPA_ALG_NONE) {
		FUNC4(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: Unsupported Group Cipher %d",
			group_cipher);
		return -1;
	}
	*key_rsc_len = FUNC1(group_cipher);

	klen = FUNC0(group_cipher);
	if (keylen != klen || maxkeylen < klen) {
		FUNC4(sm->ctx->msg_ctx, MSG_WARNING,
			"WPA: Unsupported %s Group Cipher key length %d (%d)",
			FUNC3(group_cipher), keylen, maxkeylen);
		return -1;
	}
	return 0;
}