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
struct eap_sm {int /*<<< orphan*/  ext_pw_buf; } ;
struct eap_peer_config {int flags; size_t password_len; int /*<<< orphan*/  const* password; } ;

/* Variables and functions */
 int EAP_CONFIG_FLAGS_EXT_PASSWORD ; 
 int EAP_CONFIG_FLAGS_PASSWORD_NTHASH ; 
 struct eap_peer_config* FUNC0 (struct eap_sm*) ; 
 scalar_t__ FUNC1 (struct eap_sm*,struct eap_peer_config*) ; 
 int /*<<< orphan*/  const* FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 

const u8 * FUNC4(struct eap_sm *sm, size_t *len, int *hash)
{
	struct eap_peer_config *config = FUNC0(sm);
	if (config == NULL)
		return NULL;

	if (config->flags & EAP_CONFIG_FLAGS_EXT_PASSWORD) {
		if (FUNC1(sm, config) < 0)
			return NULL;
		if (hash)
			*hash = 0;
		*len = FUNC3(sm->ext_pw_buf);
		return FUNC2(sm->ext_pw_buf);
	}

	*len = config->password_len;
	if (hash)
		*hash = !!(config->flags & EAP_CONFIG_FLAGS_PASSWORD_NTHASH);
	return config->password;
}