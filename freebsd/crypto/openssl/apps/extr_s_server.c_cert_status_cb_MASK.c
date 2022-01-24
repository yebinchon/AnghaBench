#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ verbose; int /*<<< orphan*/ * respin; } ;
typedef  TYPE_1__ tlsextstatusctx ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  OCSP_RESPONSE ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FORMAT_ASN1 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int SSL_TLSEXT_ERR_ALERT_FATAL ; 
 int SSL_TLSEXT_ERR_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ **) ; 
 int FUNC9 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC10(SSL *s, void *arg)
{
    tlsextstatusctx *srctx = arg;
    OCSP_RESPONSE *resp = NULL;
    unsigned char *rspder = NULL;
    int rspderlen;
    int ret = SSL_TLSEXT_ERR_ALERT_FATAL;

    if (srctx->verbose)
        FUNC1(bio_err, "cert_status: callback called\n");

    if (srctx->respin != NULL) {
        BIO *derbio = FUNC6(srctx->respin, 'r', FORMAT_ASN1);
        if (derbio == NULL) {
            FUNC1(bio_err, "cert_status: Cannot open OCSP response file\n");
            goto err;
        }
        resp = FUNC7(derbio, NULL);
        FUNC0(derbio);
        if (resp == NULL) {
            FUNC1(bio_err, "cert_status: Error reading OCSP response\n");
            goto err;
        }
    } else {
        ret = FUNC8(s, srctx, &resp);
        if (ret != SSL_TLSEXT_ERR_OK)
            goto err;
    }

    rspderlen = FUNC9(resp, &rspder);
    if (rspderlen <= 0)
        goto err;

    FUNC5(s, rspder, rspderlen);
    if (srctx->verbose) {
        FUNC1(bio_err, "cert_status: ocsp response sent:\n");
        FUNC4(bio_err, resp, 2);
    }

    ret = SSL_TLSEXT_ERR_OK;

 err:
    if (ret != SSL_TLSEXT_ERR_OK)
        FUNC2(bio_err);

    FUNC3(resp);

    return ret;
}