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
struct sshkey {TYPE_1__* cert; } ;
struct hostkeys {size_t num_entries; TYPE_2__* entries; } ;
struct TYPE_4__ {scalar_t__ marker; int /*<<< orphan*/  key; } ;
struct TYPE_3__ {struct sshkey* signature_key; } ;

/* Variables and functions */
 scalar_t__ MRK_REVOKE ; 
 scalar_t__ FUNC0 (struct sshkey*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sshkey*) ; 

__attribute__((used)) static int
FUNC2(struct hostkeys *hostkeys, struct sshkey *k)
{
	int is_cert = FUNC1(k);
	u_int i;

	for (i = 0; i < hostkeys->num_entries; i++) {
		if (hostkeys->entries[i].marker != MRK_REVOKE)
			continue;
		if (FUNC0(k, hostkeys->entries[i].key))
			return -1;
		if (is_cert &&
		    FUNC0(k->cert->signature_key,
		    hostkeys->entries[i].key))
			return -1;
	}
	return 0;
}