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
struct ssh {TYPE_1__* kex; int /*<<< orphan*/  private_keys; int /*<<< orphan*/  key; int /*<<< orphan*/  public_keys; } ;
struct key_entry {TYPE_1__* kex; int /*<<< orphan*/  private_keys; int /*<<< orphan*/  key; int /*<<< orphan*/  public_keys; } ;
struct TYPE_2__ {scalar_t__ server; } ;

/* Variables and functions */
 struct ssh* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ssh*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC4 (struct ssh*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void
FUNC6(struct ssh *ssh)
{
	struct key_entry *k;

	FUNC4(ssh);
	/*
	 * we've only created the public keys variants in case we
	 * are a acting as a server.
	 */
	while ((k = FUNC0(&ssh->public_keys)) != NULL) {
		FUNC1(&ssh->public_keys, k, next);
		if (ssh->kex && ssh->kex->server)
			FUNC5(k->key);
		FUNC2(k);
	}
	while ((k = FUNC0(&ssh->private_keys)) != NULL) {
		FUNC1(&ssh->private_keys, k, next);
		FUNC2(k);
	}
	if (ssh->kex)
		FUNC3(ssh->kex);
	FUNC2(ssh);
}