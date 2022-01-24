#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/ * hx509_env ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_cert ;
struct TYPE_17__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ heim_octet_string ;
struct TYPE_14__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_15__ {TYPE_1__ subjectPublicKey; } ;
struct TYPE_16__ {TYPE_2__ subjectPublicKeyInfo; } ;
struct TYPE_19__ {TYPE_3__ tbsCertificate; } ;
struct TYPE_18__ {size_t len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_5__ ExtKeyUsage ;
typedef  TYPE_6__ Certificate ;

/* Variables and functions */
 int ENOMEM ; 
 int HX509_EXTENSION_NOT_FOUND ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,char**) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int
FUNC20(hx509_context context, hx509_cert cert, hx509_env *env)
{
    ExtKeyUsage eku;
    hx509_name name;
    char *buf;
    int ret;
    hx509_env envcert = NULL;

    *env = NULL;

    /* version */
    FUNC4(&buf, "%d", FUNC1(FUNC3(cert)));
    ret = FUNC12(context, &envcert, "version", buf);
    FUNC7(buf);
    if (ret)
	goto out;

    /* subject */
    ret = FUNC11(cert, &name);
    if (ret)
	goto out;

    ret = FUNC16(name, &buf);
    if (ret) {
	FUNC15(&name);
	goto out;
    }

    ret = FUNC12(context, &envcert, "subject", buf);
    FUNC15(&name);
    if (ret)
	goto out;

    /* issuer */
    ret = FUNC10(cert, &name);
    if (ret)
	goto out;

    ret = FUNC16(name, &buf);
    FUNC15(&name);
    if (ret)
	goto out;

    ret = FUNC12(context, &envcert, "issuer", buf);
    FUNC19(buf);
    if (ret)
	goto out;

    /* eku */

    ret = FUNC0(context, cert, &eku);
    if (ret == HX509_EXTENSION_NOT_FOUND)
	;
    else if (ret != 0)
	goto out;
    else {
	size_t i;
	hx509_env enveku = NULL;

	for (i = 0; i < eku.len; i++) {

	    ret = FUNC6(&eku.val[i], '.', &buf);
	    if (ret) {
		FUNC8(&eku);
		FUNC14(&enveku);
		goto out;
	    }
	    ret = FUNC12(context, &enveku, buf, "oid-name-here");
	    FUNC7(buf);
	    if (ret) {
		FUNC8(&eku);
		FUNC14(&enveku);
		goto out;
	    }
	}
	FUNC8(&eku);

	ret = FUNC13(context, &envcert, "eku", enveku);
	if (ret) {
	    FUNC14(&enveku);
	    goto out;
	}
    }

    {
	Certificate *c = FUNC3(cert);
        heim_octet_string os, sig;
	hx509_env envhash = NULL;

	os.data = c->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.data;
	os.length =
	  c->tbsCertificate.subjectPublicKeyInfo.subjectPublicKey.length / 8;

	ret = FUNC2(context,
				      NULL,
				      FUNC18(),
				      &os,
				      NULL,
				      &sig);
	if (ret != 0)
	    goto out;

	ret = FUNC9(sig.data, sig.length, &buf);
	FUNC5(&sig);
	if (ret < 0) {
	    ret = ENOMEM;
	    FUNC17(context, 0, ret,
				   "Out of memory");
	    goto out;
	}

	ret = FUNC12(context, &envhash, "sha1", buf);
	FUNC7(buf);
	if (ret)
	    goto out;

	ret = FUNC13(context, &envcert, "hash", envhash);
	if (ret) {
	  FUNC14(&envhash);
	  goto out;
	}
    }

    ret = FUNC13(context, env, "certificate", envcert);
    if (ret)
	goto out;

    return 0;

out:
    FUNC14(&envcert);
    return ret;
}