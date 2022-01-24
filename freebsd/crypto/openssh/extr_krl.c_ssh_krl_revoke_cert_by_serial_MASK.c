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
typedef  int /*<<< orphan*/  u_int64_t ;
struct sshkey {int dummy; } ;
struct ssh_krl {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ssh_krl*,struct sshkey const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(struct ssh_krl *krl, const struct sshkey *ca_key,
    u_int64_t serial)
{
	return FUNC0(krl, ca_key, serial, serial);
}