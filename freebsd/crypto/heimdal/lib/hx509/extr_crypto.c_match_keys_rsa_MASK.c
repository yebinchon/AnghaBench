#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_4__* hx509_private_key ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_14__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_16__ {TYPE_3__ subjectPublicKey; } ;
struct TYPE_13__ {TYPE_5__ subjectPublicKeyInfo; } ;
struct TYPE_18__ {TYPE_2__ tbsCertificate; } ;
struct TYPE_17__ {int /*<<< orphan*/  publicExponent; int /*<<< orphan*/  modulus; } ;
struct TYPE_12__ {int /*<<< orphan*/ * rsa; } ;
struct TYPE_15__ {TYPE_1__ private_key; } ;
typedef  TYPE_5__ SubjectPublicKeyInfo ;
typedef  TYPE_6__ RSAPublicKey ;
typedef  int /*<<< orphan*/  RSA ;
typedef  TYPE_7__ Certificate ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_7__* FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int,TYPE_6__*,size_t*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(hx509_cert c, hx509_private_key private_key)
{
    const Certificate *cert;
    const SubjectPublicKeyInfo *spi;
    RSAPublicKey pk;
    RSA *rsa;
    const BIGNUM *d, *p, *q, *dmp1, *dmq1, *iqmp;
    BIGNUM *new_d, *new_p, *new_q, *new_dmp1, *new_dmq1, *new_iqmp, *n, *e;
    size_t size;
    int ret;

    if (private_key->private_key.rsa == NULL)
	return 0;

    rsa = private_key->private_key.rsa;
    FUNC6(rsa, NULL, NULL, &d);
    FUNC5(rsa, &p, &q);
    FUNC4(rsa, &dmp1, &dmq1, &iqmp);
    if (d == NULL || p == NULL || q == NULL)
	return 0;

    cert = FUNC11(c);
    spi = &cert->tbsCertificate.subjectPublicKeyInfo;

    rsa = FUNC7();
    if (rsa == NULL)
	return 0;

    ret = FUNC12(spi->subjectPublicKey.data,
			      spi->subjectPublicKey.length / 8,
			      &pk, &size);
    if (ret) {
	FUNC3(rsa);
	return 0;
    }
    n = FUNC14(&pk.modulus);
    e = FUNC14(&pk.publicExponent);

    FUNC13(&pk);

    new_d = FUNC0(d);
    new_p = FUNC0(p);
    new_q = FUNC0(q);
    new_dmp1 = FUNC0(dmp1);
    new_dmq1 = FUNC0(dmq1);
    new_iqmp = FUNC0(iqmp);

    if (n == NULL || e == NULL ||
	new_d == NULL || new_p == NULL|| new_q == NULL ||
	new_dmp1 == NULL || new_dmq1 == NULL || new_iqmp == NULL) {
	FUNC1(n);
	FUNC1(e);
	FUNC1(new_d);
	FUNC1(new_p);
	FUNC1(new_q);
	FUNC1(new_dmp1);
	FUNC1(new_dmq1);
	FUNC1(new_iqmp);
	FUNC3(rsa);
	return 0;
    }

    ret = FUNC10(rsa, new_d, n, e);

    if (ret != 1) {
	FUNC1(n);
	FUNC1(e);
	FUNC1(new_d);
	FUNC1(new_p);
	FUNC1(new_q);
	FUNC1(new_dmp1);
	FUNC1(new_dmq1);
	FUNC1(new_iqmp);
	FUNC3(rsa);
	return 0;
    }

    ret = FUNC9(rsa, new_p, new_q);

    if (ret != 1) {
	FUNC1(new_p);
	FUNC1(new_q);
	FUNC1(new_dmp1);
	FUNC1(new_dmq1);
	FUNC1(new_iqmp);
	FUNC3(rsa);
	return 0;
    }

    ret = FUNC8(rsa, new_dmp1, new_dmq1, new_iqmp);

    if (ret != 1) {
	FUNC1(new_dmp1);
	FUNC1(new_dmq1);
	FUNC1(new_iqmp);
	FUNC3(rsa);
	return 0;
    }

    ret = FUNC2(rsa);
    FUNC3(rsa);

    return ret == 1;
}