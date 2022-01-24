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
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  ossl_intmax_t ;
typedef  enum range { ____Placeholder_range } range ;
typedef  int /*<<< orphan*/  X509_VERIFY_PARAM ;
typedef  int /*<<< orphan*/  X509_PURPOSE ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  OPT_V_ALLOW_PROXY_CERTS 159 
#define  OPT_V_ATTIME 158 
#define  OPT_V_CHECK_SS_SIG 157 
#define  OPT_V_CRL_CHECK 156 
#define  OPT_V_CRL_CHECK_ALL 155 
#define  OPT_V_EXPLICIT_POLICY 154 
#define  OPT_V_EXTENDED_CRL 153 
#define  OPT_V_IGNORE_CRITICAL 152 
#define  OPT_V_INHIBIT_ANY 151 
#define  OPT_V_INHIBIT_MAP 150 
#define  OPT_V_ISSUER_CHECKS 149 
#define  OPT_V_NO_ALT_CHAINS 148 
#define  OPT_V_NO_CHECK_TIME 147 
#define  OPT_V_PARTIAL_CHAIN 146 
#define  OPT_V_POLICY 145 
#define  OPT_V_POLICY_CHECK 144 
#define  OPT_V_POLICY_PRINT 143 
#define  OPT_V_PURPOSE 142 
#define  OPT_V_SUITEB_128 141 
#define  OPT_V_SUITEB_128_ONLY 140 
#define  OPT_V_SUITEB_192 139 
#define  OPT_V_TRUSTED_FIRST 138 
#define  OPT_V_USE_DELTAS 137 
#define  OPT_V_VERIFY_AUTH_LEVEL 136 
#define  OPT_V_VERIFY_DEPTH 135 
#define  OPT_V_VERIFY_EMAIL 134 
#define  OPT_V_VERIFY_HOSTNAME 133 
#define  OPT_V_VERIFY_IP 132 
#define  OPT_V_VERIFY_NAME 131 
#define  OPT_V_X509_STRICT 130 
#define  OPT_V__FIRST 129 
#define  OPT_V__LAST 128 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int X509_V_FLAG_ALLOW_PROXY_CERTS ; 
 int X509_V_FLAG_CHECK_SS_SIGNATURE ; 
 int X509_V_FLAG_CRL_CHECK ; 
 int X509_V_FLAG_CRL_CHECK_ALL ; 
 int X509_V_FLAG_EXPLICIT_POLICY ; 
 int X509_V_FLAG_EXTENDED_CRL_SUPPORT ; 
 int X509_V_FLAG_IGNORE_CRITICAL ; 
 int X509_V_FLAG_INHIBIT_ANY ; 
 int X509_V_FLAG_INHIBIT_MAP ; 
 int X509_V_FLAG_NOTIFY_POLICY ; 
 int X509_V_FLAG_NO_ALT_CHAINS ; 
 int X509_V_FLAG_NO_CHECK_TIME ; 
 int X509_V_FLAG_PARTIAL_CHAIN ; 
 int X509_V_FLAG_POLICY_CHECK ; 
 int X509_V_FLAG_SUITEB_128_LOS ; 
 int X509_V_FLAG_SUITEB_128_LOS_ONLY ; 
 int X509_V_FLAG_SUITEB_192_LOS ; 
 int X509_V_FLAG_TRUSTED_FIRST ; 
 int X509_V_FLAG_USE_DELTAS ; 
 int X509_V_FLAG_X509_STRICT ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prog ; 

int FUNC20(int opt, X509_VERIFY_PARAM *vpm)
{
    int i;
    ossl_intmax_t t = 0;
    ASN1_OBJECT *otmp;
    X509_PURPOSE *xptmp;
    const X509_VERIFY_PARAM *vtmp;

    FUNC16(vpm != NULL);
    FUNC16(opt > OPT_V__FIRST);
    FUNC16(opt < OPT_V__LAST);

    switch ((enum range)opt) {
    case OPT_V__FIRST:
    case OPT_V__LAST:
        return 0;
    case OPT_V_POLICY:
        otmp = FUNC1(FUNC18(), 0);
        if (otmp == NULL) {
            FUNC0(bio_err, "%s: Invalid Policy %s\n", prog, FUNC18());
            return 0;
        }
        FUNC5(vpm, otmp);
        break;
    case OPT_V_PURPOSE:
        /* purpose name -> purpose index */
        i = FUNC3(FUNC18());
        if (i < 0) {
            FUNC0(bio_err, "%s: Invalid purpose %s\n", prog, FUNC18());
            return 0;
        }

        /* purpose index -> purpose object */
        xptmp = FUNC2(i);

        /* purpose object -> purpose value */
        i = FUNC4(xptmp);

        if (!FUNC14(vpm, i)) {
            FUNC0(bio_err,
                       "%s: Internal error setting purpose %s\n",
                       prog, FUNC18());
            return 0;
        }
        break;
    case OPT_V_VERIFY_NAME:
        vtmp = FUNC6(FUNC18());
        if (vtmp == NULL) {
            FUNC0(bio_err, "%s: Invalid verify name %s\n",
                       prog, FUNC18());
            return 0;
        }
        FUNC7(vpm, vtmp);
        break;
    case OPT_V_VERIFY_DEPTH:
        i = FUNC17(FUNC18());
        if (i >= 0)
            FUNC12(vpm, i);
        break;
    case OPT_V_VERIFY_AUTH_LEVEL:
        i = FUNC17(FUNC18());
        if (i >= 0)
            FUNC11(vpm, i);
        break;
    case OPT_V_ATTIME:
        if (!FUNC19(FUNC18(), &t))
            return 0;
        if (t != (time_t)t) {
            FUNC0(bio_err, "%s: epoch time out of range %s\n",
                       prog, FUNC18());
            return 0;
        }
        FUNC15(vpm, (time_t)t);
        break;
    case OPT_V_VERIFY_HOSTNAME:
        if (!FUNC9(vpm, FUNC18(), 0))
            return 0;
        break;
    case OPT_V_VERIFY_EMAIL:
        if (!FUNC8(vpm, FUNC18(), 0))
            return 0;
        break;
    case OPT_V_VERIFY_IP:
        if (!FUNC10(vpm, FUNC18()))
            return 0;
        break;
    case OPT_V_IGNORE_CRITICAL:
        FUNC13(vpm, X509_V_FLAG_IGNORE_CRITICAL);
        break;
    case OPT_V_ISSUER_CHECKS:
        /* NOP, deprecated */
        break;
    case OPT_V_CRL_CHECK:
        FUNC13(vpm, X509_V_FLAG_CRL_CHECK);
        break;
    case OPT_V_CRL_CHECK_ALL:
        FUNC13(vpm,
                                    X509_V_FLAG_CRL_CHECK |
                                    X509_V_FLAG_CRL_CHECK_ALL);
        break;
    case OPT_V_POLICY_CHECK:
        FUNC13(vpm, X509_V_FLAG_POLICY_CHECK);
        break;
    case OPT_V_EXPLICIT_POLICY:
        FUNC13(vpm, X509_V_FLAG_EXPLICIT_POLICY);
        break;
    case OPT_V_INHIBIT_ANY:
        FUNC13(vpm, X509_V_FLAG_INHIBIT_ANY);
        break;
    case OPT_V_INHIBIT_MAP:
        FUNC13(vpm, X509_V_FLAG_INHIBIT_MAP);
        break;
    case OPT_V_X509_STRICT:
        FUNC13(vpm, X509_V_FLAG_X509_STRICT);
        break;
    case OPT_V_EXTENDED_CRL:
        FUNC13(vpm, X509_V_FLAG_EXTENDED_CRL_SUPPORT);
        break;
    case OPT_V_USE_DELTAS:
        FUNC13(vpm, X509_V_FLAG_USE_DELTAS);
        break;
    case OPT_V_POLICY_PRINT:
        FUNC13(vpm, X509_V_FLAG_NOTIFY_POLICY);
        break;
    case OPT_V_CHECK_SS_SIG:
        FUNC13(vpm, X509_V_FLAG_CHECK_SS_SIGNATURE);
        break;
    case OPT_V_TRUSTED_FIRST:
        FUNC13(vpm, X509_V_FLAG_TRUSTED_FIRST);
        break;
    case OPT_V_SUITEB_128_ONLY:
        FUNC13(vpm, X509_V_FLAG_SUITEB_128_LOS_ONLY);
        break;
    case OPT_V_SUITEB_128:
        FUNC13(vpm, X509_V_FLAG_SUITEB_128_LOS);
        break;
    case OPT_V_SUITEB_192:
        FUNC13(vpm, X509_V_FLAG_SUITEB_192_LOS);
        break;
    case OPT_V_PARTIAL_CHAIN:
        FUNC13(vpm, X509_V_FLAG_PARTIAL_CHAIN);
        break;
    case OPT_V_NO_ALT_CHAINS:
        FUNC13(vpm, X509_V_FLAG_NO_ALT_CHAINS);
        break;
    case OPT_V_NO_CHECK_TIME:
        FUNC13(vpm, X509_V_FLAG_NO_CHECK_TIME);
        break;
    case OPT_V_ALLOW_PROXY_CERTS:
        FUNC13(vpm, X509_V_FLAG_ALLOW_PROXY_CERTS);
        break;
    }
    return 1;

}