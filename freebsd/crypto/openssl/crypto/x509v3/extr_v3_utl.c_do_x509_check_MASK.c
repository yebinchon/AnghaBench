#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  equal_fn ;
typedef  int /*<<< orphan*/  X509_NAME_ENTRY ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int /*<<< orphan*/  const* iPAddress; int /*<<< orphan*/  const* dNSName; int /*<<< orphan*/  const* rfc822Name; } ;
struct TYPE_5__ {int type; TYPE_1__ d; } ;
typedef  int /*<<< orphan*/  GENERAL_NAMES ;
typedef  TYPE_2__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  const ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int GEN_DNS ; 
 int GEN_EMAIL ; 
 int NID_commonName ; 
 int NID_pkcs9_emailAddress ; 
 int /*<<< orphan*/  NID_subject_alt_name ; 
 int NID_undef ; 
 int V_ASN1_IA5STRING ; 
 int V_ASN1_OCTET_STRING ; 
 unsigned int X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT ; 
 unsigned int X509_CHECK_FLAG_NEVER_CHECK_SUBJECT ; 
 unsigned int X509_CHECK_FLAG_NO_WILDCARDS ; 
 int /*<<< orphan*/  const* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int _X509_CHECK_FLAG_DOT_SUBDOMAINS ; 
 int FUNC6 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,unsigned int,char const*,size_t,char**) ; 
 int /*<<< orphan*/  equal_case ; 
 int /*<<< orphan*/  equal_email ; 
 int /*<<< orphan*/  equal_nocase ; 
 int /*<<< orphan*/  equal_wildcard ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,int) ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static int FUNC10(X509 *x, const char *chk, size_t chklen,
                         unsigned int flags, int check_type, char **peername)
{
    GENERAL_NAMES *gens = NULL;
    X509_NAME *name = NULL;
    int i;
    int cnid = NID_undef;
    int alt_type;
    int san_present = 0;
    int rv = 0;
    equal_fn equal;

    /* See below, this flag is internal-only */
    flags &= ~_X509_CHECK_FLAG_DOT_SUBDOMAINS;
    if (check_type == GEN_EMAIL) {
        cnid = NID_pkcs9_emailAddress;
        alt_type = V_ASN1_IA5STRING;
        equal = equal_email;
    } else if (check_type == GEN_DNS) {
        cnid = NID_commonName;
        /* Implicit client-side DNS sub-domain pattern */
        if (chklen > 1 && chk[0] == '.')
            flags |= _X509_CHECK_FLAG_DOT_SUBDOMAINS;
        alt_type = V_ASN1_IA5STRING;
        if (flags & X509_CHECK_FLAG_NO_WILDCARDS)
            equal = equal_nocase;
        else
            equal = equal_wildcard;
    } else {
        alt_type = V_ASN1_OCTET_STRING;
        equal = equal_case;
    }

    if (chklen == 0)
        chklen = FUNC9(chk);

    gens = FUNC4(x, NID_subject_alt_name, NULL, NULL);
    if (gens) {
        for (i = 0; i < FUNC7(gens); i++) {
            GENERAL_NAME *gen;
            ASN1_STRING *cstr;
            gen = FUNC8(gens, i);
            if (gen->type != check_type)
                continue;
            san_present = 1;
            if (check_type == GEN_EMAIL)
                cstr = gen->d.rfc822Name;
            else if (check_type == GEN_DNS)
                cstr = gen->d.dNSName;
            else
                cstr = gen->d.iPAddress;
            /* Positive on success, negative on error! */
            if ((rv = FUNC6(cstr, alt_type, equal, flags,
                                      chk, chklen, peername)) != 0)
                break;
        }
        FUNC0(gens);
        if (rv != 0)
            return rv;
        if (san_present && !(flags & X509_CHECK_FLAG_ALWAYS_CHECK_SUBJECT))
            return 0;
    }

    /* We're done if CN-ID is not pertinent */
    if (cnid == NID_undef || (flags & X509_CHECK_FLAG_NEVER_CHECK_SUBJECT))
        return 0;

    i = -1;
    name = FUNC5(x);
    while ((i = FUNC3(name, cnid, i)) >= 0) {
        const X509_NAME_ENTRY *ne = FUNC2(name, i);
        const ASN1_STRING *str = FUNC1(ne);

        /* Positive on success, negative on error! */
        if ((rv = FUNC6(str, -1, equal, flags,
                                  chk, chklen, peername)) != 0)
            return rv;
    }
    return 0;
}