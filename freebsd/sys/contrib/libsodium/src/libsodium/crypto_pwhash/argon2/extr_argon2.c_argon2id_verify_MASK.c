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

/* Variables and functions */
 int /*<<< orphan*/  Argon2_id ; 
 int FUNC0 (char const*,void const*,size_t const,int /*<<< orphan*/ ) ; 

int
FUNC1(const char *encoded, const void *pwd, const size_t pwdlen)
{
    return FUNC0(encoded, pwd, pwdlen, Argon2_id);
}