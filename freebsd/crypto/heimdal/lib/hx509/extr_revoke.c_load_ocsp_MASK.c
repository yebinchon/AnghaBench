#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct TYPE_6__ {TYPE_1__* certs; } ;
struct revoke_ocsp {int /*<<< orphan*/ * signer; int /*<<< orphan*/ * certs; TYPE_2__ ocsp; int /*<<< orphan*/  last_modfied; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/ * hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
struct TYPE_5__ {size_t len; int /*<<< orphan*/ * val; } ;
typedef  TYPE_2__ OCSPBasicOCSPResponse ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC7 (void*,size_t,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static int
FUNC11(hx509_context context, struct revoke_ocsp *ocsp)
{
    OCSPBasicOCSPResponse basic;
    hx509_certs certs = NULL;
    size_t length;
    struct stat sb;
    void *data;
    int ret;

    ret = FUNC8(ocsp->path, &data, &length);
    if (ret)
	return ret;

    ret = FUNC10(ocsp->path, &sb);
    if (ret)
	return errno;

    ret = FUNC7(data, length, &basic);
    FUNC9(data);
    if (ret) {
	FUNC6(context, 0, ret,
			       "Failed to parse OCSP response");
	return ret;
    }

    if (basic.certs) {
	size_t i;

	ret = FUNC5(context, "MEMORY:ocsp-certs", 0,
			       NULL, &certs);
	if (ret) {
	    FUNC0(&basic);
	    return ret;
	}

	for (i = 0; i < basic.certs->len; i++) {
	    hx509_cert c;

	    ret = FUNC2(context, &basic.certs->val[i], &c);
	    if (ret)
		continue;

	    ret = FUNC3(context, certs, c);
	    FUNC1(c);
	    if (ret)
		continue;
	}
    }

    ocsp->last_modfied = sb.st_mtime;

    FUNC0(&ocsp->ocsp);
    FUNC4(&ocsp->certs);
    FUNC1(ocsp->signer);

    ocsp->ocsp = basic;
    ocsp->certs = certs;
    ocsp->signer = NULL;

    return 0;
}