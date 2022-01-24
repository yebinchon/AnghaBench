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
struct eap_sm {int /*<<< orphan*/ * ext_pw_buf; int /*<<< orphan*/  ext_pw; } ;
struct eap_peer_config {int /*<<< orphan*/  password_len; int /*<<< orphan*/ * password; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct eap_sm *sm,
				struct eap_peer_config *config)
{
	char *name;

	if (config->password == NULL)
		return -1;

	name = FUNC4(config->password_len + 1);
	if (name == NULL)
		return -1;
	FUNC3(name, config->password, config->password_len);

	FUNC0(sm->ext_pw_buf);
	sm->ext_pw_buf = FUNC1(sm->ext_pw, name);
	FUNC2(name);

	return sm->ext_pw_buf == NULL ? -1 : 0;
}