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
struct hx509cipher {int /*<<< orphan*/  const* oid; } ;
typedef  int /*<<< orphan*/  heim_oid ;

/* Variables and functions */
 struct hx509cipher* FUNC0 (char const*) ; 

const heim_oid *
FUNC1(const char *name)
{
    const struct hx509cipher *cipher;

    cipher = FUNC0(name);
    if (cipher == NULL)
	return NULL;
    return cipher->oid;
}