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
struct krb5_kafs_data {int /*<<< orphan*/  context; } ;
struct kafs_data {struct krb5_kafs_data* data; } ;
typedef  int /*<<< orphan*/  krb5_realm ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *
FUNC3(struct kafs_data *data, const char *host)
{
    struct krb5_kafs_data *d = data->data;
    krb5_realm *realms;
    char *r;
    if(FUNC1(d->context, host, &realms))
	return NULL;
    r = FUNC2(realms[0]);
    FUNC0(d->context, realms);
    return r;
}