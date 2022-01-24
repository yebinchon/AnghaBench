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
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  X509_NAME ;
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  ErrorOnNul ; 
 int /*<<< orphan*/  NID_commonName ; 
 scalar_t__ SERF_ERROR_SSL_CERT_FAILED ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static apr_status_t FUNC4(X509 *server_cert, apr_pool_t *pool)
{
    char buf[1024];
    int length;
    apr_status_t ret;

    ret = FUNC2(NULL, server_cert, ErrorOnNul, NULL);
    if (ret) {
      return ret;
    } else {
        /* Fail if the subject's CN field contains \0 characters. */
        X509_NAME *subject = FUNC1(server_cert);
        if (!subject)
            return SERF_ERROR_SSL_CERT_FAILED;

        length = FUNC0(subject, NID_commonName, buf, 1024);
        if (length != -1)
            if (FUNC3(buf) != length)
                return SERF_ERROR_SSL_CERT_FAILED;
    }

    return APR_SUCCESS;
}