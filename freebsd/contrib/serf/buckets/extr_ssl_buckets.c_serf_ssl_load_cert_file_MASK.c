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
struct TYPE_4__ {int /*<<< orphan*/ * ssl_cert; } ;
typedef  TYPE_1__ serf_ssl_certificate_t ;
typedef  int /*<<< orphan*/  apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  APR_SUCCESS ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SERF_ERROR_SSL_CERT_FAILED ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 

apr_status_t FUNC4(
    serf_ssl_certificate_t **cert,
    const char *file_path,
    apr_pool_t *pool)
{
    FILE *fp = FUNC3(file_path, "r");

    if (fp) {
        X509 *ssl_cert = FUNC0(fp, NULL, NULL, NULL);
        FUNC2(fp);

        if (ssl_cert) {
            *cert = FUNC1(pool, sizeof(serf_ssl_certificate_t));
            (*cert)->ssl_cert = ssl_cert;

            return APR_SUCCESS;
        }
    }

    return SERF_ERROR_SSL_CERT_FAILED;
}