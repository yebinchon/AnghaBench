#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ length; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ serialNumber; int /*<<< orphan*/  issuer; } ;
struct TYPE_7__ {TYPE_2__ cert_info; } ;
typedef  TYPE_3__ X509 ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (char*) ; 

unsigned long FUNC9(X509 *a)
{
    unsigned long ret = 0;
    EVP_MD_CTX *ctx = FUNC4();
    unsigned char md[16];
    char *f;

    if (ctx == NULL)
        goto err;
    f = FUNC7(a->cert_info.issuer, NULL, 0);
    if (!FUNC1(ctx, FUNC5(), NULL))
        goto err;
    if (!FUNC2(ctx, (unsigned char *)f, FUNC8(f)))
        goto err;
    FUNC6(f);
    if (!FUNC2
        (ctx, (unsigned char *)a->cert_info.serialNumber.data,
         (unsigned long)a->cert_info.serialNumber.length))
        goto err;
    if (!FUNC0(ctx, &(md[0]), NULL))
        goto err;
    ret = (((unsigned long)md[0]) | ((unsigned long)md[1] << 8L) |
           ((unsigned long)md[2] << 16L) | ((unsigned long)md[3] << 24L)
        ) & 0xffffffffL;
 err:
    FUNC3(ctx);
    return ret;
}