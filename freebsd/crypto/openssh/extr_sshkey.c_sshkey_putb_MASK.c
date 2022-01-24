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
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SSHKEY_SERIALIZE_DEFAULT ; 
 int FUNC0 (struct sshkey const*,struct sshbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC1(const struct sshkey *key, struct sshbuf *b)
{
	return FUNC0(key, b, 0, SSHKEY_SERIALIZE_DEFAULT);
}