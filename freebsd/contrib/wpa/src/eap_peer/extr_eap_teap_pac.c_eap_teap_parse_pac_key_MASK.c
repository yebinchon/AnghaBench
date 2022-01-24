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
struct eap_teap_pac {int /*<<< orphan*/  pac_key; } ;

/* Variables and functions */
 size_t EAP_TEAP_PAC_KEY_LEN ; 
 int /*<<< orphan*/ * FUNC0 (char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static const char * FUNC3(struct eap_teap_pac *pac, char *pos)
{
	u8 *key;
	size_t key_len;

	key = FUNC0(pos, &key_len);
	if (!key || key_len != EAP_TEAP_PAC_KEY_LEN) {
		FUNC1(key);
		return "Invalid PAC-Key";
	}

	FUNC2(pac->pac_key, key, EAP_TEAP_PAC_KEY_LEN);
	FUNC1(key);

	return NULL;
}