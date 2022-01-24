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
struct sshmac {char* name; scalar_t__ enabled; int /*<<< orphan*/ * key; } ;
struct ssh {int dummy; } ;

/* Variables and functions */
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_NO_MAC_ALG_MATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct sshmac*,char*) ; 
 char* FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct ssh *ssh, struct sshmac *mac, char *client, char *server)
{
	char *name = FUNC2(client, server, NULL);

	if (name == NULL)
		return SSH_ERR_NO_MAC_ALG_MATCH;
	if (FUNC1(mac, name) < 0) {
		FUNC0(name);
		return SSH_ERR_INTERNAL_ERROR;
	}
	mac->name = name;
	mac->key = NULL;
	mac->enabled = 0;
	return 0;
}