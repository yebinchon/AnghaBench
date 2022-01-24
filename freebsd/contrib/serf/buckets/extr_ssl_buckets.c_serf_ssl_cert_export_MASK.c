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
struct TYPE_3__ {int /*<<< orphan*/  ssl_cert; } ;
typedef  TYPE_1__ serf_ssl_certificate_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned char**) ; 

const char *FUNC4(
    const serf_ssl_certificate_t *cert,
    apr_pool_t *pool)
{
    char *binary_cert;
    char *encoded_cert;
    int len;
    unsigned char *unused;

    /* find the length of the DER encoding. */
    len = FUNC3(cert->ssl_cert, NULL);
    if (len < 0) {
        return NULL;
    }

    binary_cert = FUNC2(pool, len);
    unused = (unsigned char *)binary_cert;
    len = FUNC3(cert->ssl_cert, &unused);  /* unused is incremented  */
    if (len < 0) {
        return NULL;
    }

    encoded_cert = FUNC2(pool, FUNC1(len));
    FUNC0(encoded_cert, binary_cert, len);
    
    return encoded_cert;
}