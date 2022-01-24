#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_salt ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ (* krb5_key_proc ) (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;
typedef  scalar_t__ krb5_error_code ;
typedef  scalar_t__ krb5_enctype ;
typedef  TYPE_1__* krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_pointer ;
struct TYPE_14__ {unsigned int len; int /*<<< orphan*/ * val; } ;
struct TYPE_13__ {scalar_t__* etypes; } ;
typedef  int /*<<< orphan*/  PA_DATA ;
typedef  TYPE_3__ METHOD_DATA ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 scalar_t__ ETYPE_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
	   METHOD_DATA *md,
	   krb5_principal client,
	   krb5_key_proc key_proc,
	   krb5_const_pointer keyseed,
	   krb5_enctype *enctypes,
	   unsigned netypes,
	   krb5_salt *salt)
{
    krb5_error_code ret;
    PA_DATA *pa2;
    krb5_salt salt2;
    krb5_enctype *ep;
    size_t i;

    if(salt == NULL) {
	/* default to standard salt */
	ret = FUNC3 (context, client, &salt2);
	if (ret)
	    return ret;
	salt = &salt2;
    }
    if (!enctypes) {
	enctypes = context->etypes;
	netypes = 0;
	for (ep = enctypes; *ep != ETYPE_NULL; ep++)
	    netypes++;
    }
    pa2 = FUNC6 (md->val, (md->len + netypes) * sizeof(*md->val));
    if (pa2 == NULL) {
	FUNC4(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    md->val = pa2;

    for (i = 0; i < netypes; ++i) {
	krb5_keyblock *key;

	ret = (*key_proc)(context, enctypes[i], *salt, keyseed, &key);
	if (ret)
	    continue;
	ret = FUNC5 (context, &md->val[md->len],
				     enctypes[i], key);
	FUNC1 (context, key);
	if (ret)
	    return ret;
	++md->len;
    }
    if(salt == &salt2)
	FUNC2(context, salt2);
    return 0;
}