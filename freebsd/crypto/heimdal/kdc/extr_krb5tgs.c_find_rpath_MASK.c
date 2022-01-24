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
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  Realm ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *
FUNC1(krb5_context context, Realm crealm, Realm srealm)
{
    const char *new_realm = FUNC0(context,
						   NULL,
						   "capaths",
						   crealm,
						   srealm,
						   NULL);
    return new_realm;
}