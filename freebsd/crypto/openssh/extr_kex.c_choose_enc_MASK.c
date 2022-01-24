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
struct sshenc {char* name; int /*<<< orphan*/ * cipher; int /*<<< orphan*/  block_size; int /*<<< orphan*/  key_len; int /*<<< orphan*/ * key; int /*<<< orphan*/  iv_len; int /*<<< orphan*/ * iv; scalar_t__ enabled; } ;

/* Variables and functions */
 int SSH_ERR_INTERNAL_ERROR ; 
 int SSH_ERR_NO_CIPHER_ALG_MATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct sshenc *enc, char *client, char *server)
{
	char *name = FUNC5(client, server, NULL);

	if (name == NULL)
		return SSH_ERR_NO_CIPHER_ALG_MATCH;
	if ((enc->cipher = FUNC1(name)) == NULL) {
		FUNC4(name);
		return SSH_ERR_INTERNAL_ERROR;
	}
	enc->name = name;
	enc->enabled = 0;
	enc->iv = NULL;
	enc->iv_len = FUNC2(enc->cipher);
	enc->key = NULL;
	enc->key_len = FUNC3(enc->cipher);
	enc->block_size = FUNC0(enc->cipher);
	return 0;
}