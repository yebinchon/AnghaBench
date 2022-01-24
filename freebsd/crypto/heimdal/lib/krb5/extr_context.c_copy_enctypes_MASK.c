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
typedef  scalar_t__ krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,size_t) ; 
 scalar_t__ KRB5_ENCTYPE_NULL ; 
 int /*<<< orphan*/  KRB5_PROG_ETYPE_NOSUPP ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC6(krb5_context context,
	      const krb5_enctype *in,
	      krb5_enctype **out)
{
    krb5_enctype *p = NULL;
    size_t m, n;

    for (n = 0; in[n]; n++)
	;
    n++;
    FUNC0(p, n);
    if(p == NULL)
	return FUNC4(context);
    for (n = 0, m = 0; in[n]; n++) {
	if (FUNC3(context, in[n]) != 0)
	    continue;
	p[m++] = in[n];
    }
    p[m] = KRB5_ENCTYPE_NULL;
    if (m == 0) {
	FUNC2(p);
	FUNC5 (context, KRB5_PROG_ETYPE_NOSUPP,
				FUNC1("no valid enctype set", ""));
	return KRB5_PROG_ETYPE_NOSUPP;
    }
    *out = p;
    return 0;
}