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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** FUNC3 (int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context, krb5_creds const *tkt, krb5_creds ***tgts)
{
    int i;
    krb5_error_code ret;
    krb5_creds **tmp = *tgts;

    for(i = 0; tmp && tmp[i]; i++); /* XXX */
    tmp = FUNC3(tmp, (i+2)*sizeof(*tmp));
    if(tmp == NULL) {
	FUNC2(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    *tgts = tmp;
    ret = FUNC1(context, tkt, &tmp[i]);
    tmp[i+1] = NULL;
    return ret;
}