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
struct kex {char* hostkey_alg; scalar_t__ hostkey_type; int /*<<< orphan*/  hostkey_nid; } ;

/* Variables and functions */
 scalar_t__ KEY_UNSPEC ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_NO_HOSTKEY_ALG_MATCH ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct kex *k, char *client, char *server)
{
	k->hostkey_alg = FUNC1(client, server, NULL);

	FUNC0("kex: host key algorithm: %s",
	    k->hostkey_alg ? k->hostkey_alg : "(no match)");
	if (k->hostkey_alg == NULL)
		return SSH_ERR_NO_HOSTKEY_ALG_MATCH;
	k->hostkey_type = FUNC3(k->hostkey_alg);
	if (k->hostkey_type == KEY_UNSPEC)
		return SSH_ERR_INTERNAL_ERROR;
	k->hostkey_nid = FUNC2(k->hostkey_alg);
	return 0;
}