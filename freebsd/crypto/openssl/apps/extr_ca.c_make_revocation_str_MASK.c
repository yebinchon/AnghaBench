#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int length; scalar_t__ data; } ;
typedef  int REVINFO_TYPE ;
typedef  TYPE_1__ ASN1_UTCTIME ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
#define  REV_CA_COMPROMISE 133 
#define  REV_CRL_REASON 132 
#define  REV_HOLD 131 
#define  REV_KEY_COMPROMISE 130 
#define  REV_NONE 129 
#define  REV_VALID 128 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 char** crl_reasons ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (char const*) ; 

__attribute__((used)) static char *FUNC11(REVINFO_TYPE rev_type, const char *rev_arg)
{
    char *str;
    const char *reason = NULL, *other = NULL;
    ASN1_OBJECT *otmp;
    ASN1_UTCTIME *revtm = NULL;
    int i;

    switch (rev_type) {
    case REV_NONE:
    case REV_VALID:
        break;

    case REV_CRL_REASON:
        for (i = 0; i < 8; i++) {
            if (FUNC9(rev_arg, crl_reasons[i]) == 0) {
                reason = crl_reasons[i];
                break;
            }
        }
        if (reason == NULL) {
            FUNC3(bio_err, "Unknown CRL reason %s\n", rev_arg);
            return NULL;
        }
        break;

    case REV_HOLD:
        /* Argument is an OID */
        otmp = FUNC4(rev_arg, 0);
        FUNC1(otmp);

        if (otmp == NULL) {
            FUNC3(bio_err, "Invalid object identifier %s\n", rev_arg);
            return NULL;
        }

        reason = "holdInstruction";
        other = rev_arg;
        break;

    case REV_KEY_COMPROMISE:
    case REV_CA_COMPROMISE:
        /* Argument is the key compromise time  */
        if (!FUNC0(NULL, rev_arg)) {
            FUNC3(bio_err,
                       "Invalid time format %s. Need YYYYMMDDHHMMSSZ\n",
                       rev_arg);
            return NULL;
        }
        other = rev_arg;
        if (rev_type == REV_KEY_COMPROMISE)
            reason = "keyTime";
        else
            reason = "CAkeyTime";

        break;
    }

    revtm = FUNC7(NULL, 0);

    if (!revtm)
        return NULL;

    i = revtm->length + 1;

    if (reason)
        i += FUNC10(reason) + 1;
    if (other)
        i += FUNC10(other) + 1;

    str = FUNC8(i, "revocation reason");
    FUNC6(str, (char *)revtm->data, i);
    if (reason) {
        FUNC5(str, ",", i);
        FUNC5(str, reason, i);
    }
    if (other) {
        FUNC5(str, ",", i);
        FUNC5(str, other, i);
    }
    FUNC2(revtm);
    return str;
}