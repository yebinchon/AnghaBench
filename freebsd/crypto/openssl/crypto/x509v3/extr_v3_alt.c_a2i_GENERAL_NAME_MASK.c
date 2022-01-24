#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_9__ {int /*<<< orphan*/ * ia5; int /*<<< orphan*/ * ip; int /*<<< orphan*/ * rid; } ;
struct TYPE_10__ {int type; TYPE_1__ d; } ;
typedef  TYPE_2__ GENERAL_NAME ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 TYPE_2__* FUNC4 () ; 
#define  GEN_DIRNAME 134 
#define  GEN_DNS 133 
#define  GEN_EMAIL 132 
#define  GEN_IPADD 131 
#define  GEN_OTHERNAME 130 
#define  GEN_RID 129 
#define  GEN_URI 128 
 int /*<<< orphan*/ * FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509V3_F_A2I_GENERAL_NAME ; 
 int /*<<< orphan*/  X509V3_R_BAD_IP_ADDRESS ; 
 int /*<<< orphan*/  X509V3_R_BAD_OBJECT ; 
 int /*<<< orphan*/  X509V3_R_DIRNAME_ERROR ; 
 int /*<<< orphan*/  X509V3_R_MISSING_VALUE ; 
 int /*<<< orphan*/  X509V3_R_OTHERNAME_ERROR ; 
 int /*<<< orphan*/  X509V3_R_UNSUPPORTED_TYPE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (char const*) ; 
 int /*<<< orphan*/ * FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

GENERAL_NAME *FUNC12(GENERAL_NAME *out,
                               const X509V3_EXT_METHOD *method,
                               X509V3_CTX *ctx, int gen_type, const char *value,
                               int is_nc)
{
    char is_string = 0;
    GENERAL_NAME *gen = NULL;

    if (!value) {
        FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_MISSING_VALUE);
        return NULL;
    }

    if (out)
        gen = out;
    else {
        gen = FUNC4();
        if (gen == NULL) {
            FUNC6(X509V3_F_A2I_GENERAL_NAME, ERR_R_MALLOC_FAILURE);
            return NULL;
        }
    }

    switch (gen_type) {
    case GEN_URI:
    case GEN_EMAIL:
    case GEN_DNS:
        is_string = 1;
        break;

    case GEN_RID:
        {
            ASN1_OBJECT *obj;
            if ((obj = FUNC5(value, 0)) == NULL) {
                FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_BAD_OBJECT);
                FUNC2(2, "value=", value);
                goto err;
            }
            gen->d.rid = obj;
        }
        break;

    case GEN_IPADD:
        if (is_nc)
            gen->d.ip = FUNC8(value);
        else
            gen->d.ip = FUNC7(value);
        if (gen->d.ip == NULL) {
            FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_BAD_IP_ADDRESS);
            FUNC2(2, "value=", value);
            goto err;
        }
        break;

    case GEN_DIRNAME:
        if (!FUNC9(gen, value, ctx)) {
            FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_DIRNAME_ERROR);
            goto err;
        }
        break;

    case GEN_OTHERNAME:
        if (!FUNC10(gen, value, ctx)) {
            FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_OTHERNAME_ERROR);
            goto err;
        }
        break;
    default:
        FUNC6(X509V3_F_A2I_GENERAL_NAME, X509V3_R_UNSUPPORTED_TYPE);
        goto err;
    }

    if (is_string) {
        if ((gen->d.ia5 = FUNC0()) == NULL ||
            !FUNC1(gen->d.ia5, (unsigned char *)value,
                             FUNC11(value))) {
            FUNC6(X509V3_F_A2I_GENERAL_NAME, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    }

    gen->type = gen_type;

    return gen;

 err:
    if (!out)
        FUNC3(gen);
    return NULL;
}