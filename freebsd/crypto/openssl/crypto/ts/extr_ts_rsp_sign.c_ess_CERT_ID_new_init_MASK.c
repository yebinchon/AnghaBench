#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_14__ {int /*<<< orphan*/  serial; int /*<<< orphan*/  issuer; } ;
struct TYPE_13__ {TYPE_8__* issuer_serial; int /*<<< orphan*/  hash; } ;
struct TYPE_11__ {int /*<<< orphan*/ * dirn; } ;
struct TYPE_12__ {TYPE_1__ d; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ GENERAL_NAME ;
typedef  TYPE_3__ ESS_CERT_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 TYPE_8__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 () ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  TS_F_ESS_CERT_ID_NEW_INIT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static ESS_CERT_ID *FUNC16(X509 *cert, int issuer_needed)
{
    ESS_CERT_ID *cid = NULL;
    GENERAL_NAME *name = NULL;
    unsigned char cert_sha1[SHA_DIGEST_LENGTH];

    /* Call for side-effect of computing hash and caching extensions */
    FUNC11(cert, -1, 0);
    if ((cid = FUNC4()) == NULL)
        goto err;
    FUNC12(cert, FUNC6(), cert_sha1, NULL);
    if (!FUNC2(cid->hash, cert_sha1, SHA_DIGEST_LENGTH))
        goto err;

    /* Setting the issuer/serial if requested. */
    if (issuer_needed) {
        if (cid->issuer_serial == NULL
            && (cid->issuer_serial = FUNC5()) == NULL)
            goto err;
        if ((name = FUNC8()) == NULL)
            goto err;
        name->type = GEN_DIRNAME;
        if ((name->d.dirn = FUNC10(FUNC13(cert))) == NULL)
            goto err;
        if (!FUNC15(cid->issuer_serial->issuer, name))
            goto err;
        name = NULL;            /* Ownership is lost. */
        FUNC1(cid->issuer_serial->serial);
        if (!(cid->issuer_serial->serial =
              FUNC0(FUNC14(cert))))
            goto err;
    }

    return cid;
 err:
    FUNC7(name);
    FUNC3(cid);
    FUNC9(TS_F_ESS_CERT_ID_NEW_INIT, ERR_R_MALLOC_FAILURE);
    return NULL;
}