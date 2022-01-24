#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct stat {int /*<<< orphan*/  st_mtime; } ;
struct TYPE_7__ {int length; } ;
struct TYPE_8__ {TYPE_1__ signatureValue; } ;
typedef  TYPE_2__ CRLCertificateList ;

/* Variables and functions */
 int HX509_CRYPTO_SIG_INVALID_FORMAT ; 
 int FUNC0 (void*,size_t,TYPE_2__*,size_t*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (char const*,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (char const*,struct stat*) ; 

__attribute__((used)) static int
FUNC6(const char *path, time_t *t, CRLCertificateList *crl)
{
    size_t length, size;
    struct stat sb;
    void *data;
    int ret;

    FUNC2(crl, 0, sizeof(*crl));

    ret = FUNC3(path, &data, &length);
    if (ret)
	return ret;

    ret = FUNC5(path, &sb);
    if (ret)
	return errno;

    *t = sb.st_mtime;

    ret = FUNC0(data, length, crl, &size);
    FUNC4(data);
    if (ret)
	return ret;

    /* check signature is aligned */
    if (crl->signatureValue.length & 7) {
	FUNC1(crl);
	return HX509_CRYPTO_SIG_INVALID_FORMAT;
    }
    return 0;
}