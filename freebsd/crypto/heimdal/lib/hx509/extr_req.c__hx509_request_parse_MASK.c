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
typedef  int /*<<< orphan*/  hx509_request ;
typedef  int /*<<< orphan*/  hx509_name ;
typedef  int /*<<< orphan*/  hx509_context ;
struct TYPE_5__ {int /*<<< orphan*/  subject; int /*<<< orphan*/  subjectPKInfo; } ;
struct TYPE_6__ {TYPE_1__ certificationRequestInfo; } ;
typedef  TYPE_1__ CertificationRequestInfo ;
typedef  TYPE_2__ CertificationRequest ;

/* Variables and functions */
 int HX509_UNSUPPORTED_OPERATION ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (void*,size_t,TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,char const*) ; 
 int FUNC9 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

int
FUNC12(hx509_context context,
		     const char *path,
		     hx509_request *req)
{
    CertificationRequest r;
    CertificationRequestInfo *rinfo;
    hx509_name subject;
    size_t len, size;
    void *p;
    int ret;

    if (FUNC11(path, "PKCS10:", 7) != 0) {
	FUNC8(context, 0, HX509_UNSUPPORTED_OPERATION,
			       "unsupport type in %s", path);
	return HX509_UNSUPPORTED_OPERATION;
    }
    path += 7;

    /* XXX PEM request */

    ret = FUNC9(path, &p, &len);
    if (ret) {
	FUNC8(context, 0, ret, "Failed to map file %s", path);
	return ret;
    }

    ret = FUNC1(p, len, &r, &size);
    FUNC10(p);
    if (ret) {
	FUNC8(context, 0, ret, "Failed to decode %s", path);
	return ret;
    }

    ret = FUNC5(context, req);
    if (ret) {
	FUNC2(&r);
	return ret;
    }

    rinfo = &r.certificationRequestInfo;

    ret = FUNC6(context, *req,
						  &rinfo->subjectPKInfo);
    if (ret) {
	FUNC2(&r);
	FUNC4(req);
	return ret;
    }

    ret = FUNC0(&rinfo->subject, &subject);
    if (ret) {
	FUNC2(&r);
	FUNC4(req);
	return ret;
    }
    ret = FUNC7(context, *req, subject);
    FUNC3(&subject);
    FUNC2(&r);
    if (ret) {
	FUNC4(req);
	return ret;
    }

    return 0;
}