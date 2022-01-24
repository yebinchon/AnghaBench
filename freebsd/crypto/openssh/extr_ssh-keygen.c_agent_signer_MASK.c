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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,struct sshkey const*,int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/  const*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(const struct sshkey *key, u_char **sigp, size_t *lenp,
    const u_char *data, size_t datalen,
    const char *alg, u_int compat, void *ctx)
{
	int *agent_fdp = (int *)ctx;

	return FUNC0(*agent_fdp, key, sigp, lenp,
	    data, datalen, alg, compat);
}