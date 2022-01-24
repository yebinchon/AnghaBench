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
struct krb5_krbhst_data {int /*<<< orphan*/  hosts; int /*<<< orphan*/ * index; int /*<<< orphan*/ * end; int /*<<< orphan*/  flags; int /*<<< orphan*/ * realm; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KD_CONFIG_EXISTS ; 
 int /*<<< orphan*/  KD_LARGE_MSG ; 
 int KRB5_KRBHST_FLAGS_LARGE_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char const*,char const*,int) ; 
 struct krb5_krbhst_data* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char) ; 
 int /*<<< orphan*/ * FUNC4 (char const*) ; 

__attribute__((used)) static struct krb5_krbhst_data*
FUNC5(krb5_context context,
	    const char *service,
	    const char *realm,
	    int flags)
{
    struct krb5_krbhst_data *kd;

    if((kd = FUNC1(1, sizeof(*kd))) == NULL)
	return NULL;

    if((kd->realm = FUNC4(realm)) == NULL) {
	FUNC2(kd);
	return NULL;
    }

    FUNC0(context, 2, "Trying to find service %s for realm %s flags %x",
		service, realm, flags);

    /* For 'realms' without a . do not even think of going to DNS */
    if (!FUNC3(realm, '.'))
	kd->flags |= KD_CONFIG_EXISTS;

    if (flags & KRB5_KRBHST_FLAGS_LARGE_MSG)
	kd->flags |= KD_LARGE_MSG;
    kd->end = kd->index = &kd->hosts;
    return kd;
}