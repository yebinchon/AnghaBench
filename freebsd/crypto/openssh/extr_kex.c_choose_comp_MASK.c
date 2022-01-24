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
struct sshcomp {char* name; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMP_DELAYED ; 
 int /*<<< orphan*/  COMP_NONE ; 
 int /*<<< orphan*/  COMP_ZLIB ; 
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_NO_COMPRESS_ALG_MATCH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(struct sshcomp *comp, char *client, char *server)
{
	char *name = FUNC1(client, server, NULL);

	if (name == NULL)
		return SSH_ERR_NO_COMPRESS_ALG_MATCH;
	if (FUNC2(name, "zlib@openssh.com") == 0) {
		comp->type = COMP_DELAYED;
	} else if (FUNC2(name, "zlib") == 0) {
		comp->type = COMP_ZLIB;
	} else if (FUNC2(name, "none") == 0) {
		comp->type = COMP_NONE;
	} else {
		FUNC0(name);
		return SSH_ERR_INTERNAL_ERROR;
	}
	comp->name = name;
	return 0;
}