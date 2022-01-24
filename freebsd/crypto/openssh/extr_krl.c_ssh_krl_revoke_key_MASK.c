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
struct sshkey {TYPE_1__* cert; } ;
struct ssh_krl {int dummy; } ;
struct TYPE_2__ {scalar_t__ serial; int /*<<< orphan*/  signature_key; int /*<<< orphan*/  key_id; } ;

/* Variables and functions */
 int FUNC0 (struct ssh_krl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ssh_krl*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct ssh_krl*,struct sshkey const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sshkey const*) ; 

int
FUNC4(struct ssh_krl *krl, const struct sshkey *key)
{
	if (!FUNC3(key))
		return FUNC2(krl, key);

	if (key->cert->serial == 0) {
		return FUNC0(krl,
		    key->cert->signature_key,
		    key->cert->key_id);
	} else {
		return FUNC1(krl,
		    key->cert->signature_key,
		    key->cert->serial);
	}
}