#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int ;
struct sshkey {int dummy; } ;
struct TYPE_4__ {size_t num_host_key_files; } ;
struct TYPE_3__ {struct sshkey** host_keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ options ; 
 TYPE_1__ sensitive_data ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sshkey*) ; 
 int FUNC3 (struct sshkey*,struct sshkey**) ; 
 int /*<<< orphan*/  FUNC4 (struct sshkey*) ; 

void
FUNC5(void)
{
	struct sshkey *tmp;
	u_int i;
	int r;

	for (i = 0; i < options.num_host_key_files; i++) {
		if (sensitive_data.host_keys[i]) {
			if ((r = FUNC3(
			    sensitive_data.host_keys[i], &tmp)) != 0)
				FUNC0("could not demote host %s key: %s",
				    FUNC4(sensitive_data.host_keys[i]),
				    FUNC1(r));
			FUNC2(sensitive_data.host_keys[i]);
			sensitive_data.host_keys[i] = tmp;
		}
		/* Certs do not need demotion */
	}
}