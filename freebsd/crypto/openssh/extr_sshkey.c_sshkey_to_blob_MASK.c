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
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSHKEY_SERIALIZE_DEFAULT ; 
 int FUNC0 (struct sshkey const*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const struct sshkey *key, u_char **blobp, size_t *lenp)
{
	return FUNC0(key, blobp, lenp, 0, SSHKEY_SERIALIZE_DEFAULT);
}