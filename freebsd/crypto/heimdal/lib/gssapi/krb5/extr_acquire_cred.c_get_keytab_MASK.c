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
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * _gsskrb5_keytab ; 
 int /*<<< orphan*/  gssapi_keytab_mutex ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context, krb5_keytab *keytab)
{
    krb5_error_code kret;

    FUNC0(&gssapi_keytab_mutex);

    if (_gsskrb5_keytab != NULL) {
	char *name = NULL;

	kret = FUNC3(context, _gsskrb5_keytab, &name);
	if (kret == 0) {
	    kret = FUNC4(context, name, keytab);
	    FUNC5(name);
	}
    } else
	kret = FUNC2(context, keytab);

    FUNC1(&gssapi_keytab_mutex);

    return (kret);
}