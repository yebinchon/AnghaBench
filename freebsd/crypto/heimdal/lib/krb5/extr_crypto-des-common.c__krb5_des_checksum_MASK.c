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
struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int /*<<< orphan*/  ectx; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  ivec ;
struct TYPE_6__ {unsigned char* data; } ;
struct TYPE_7__ {TYPE_2__ checksum; } ;
struct TYPE_5__ {struct _krb5_evp_schedule* data; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  DES_cblock ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC11(krb5_context context,
		   const EVP_MD *evp_md,
		   struct _krb5_key_data *key,
		   const void *data,
		   size_t len,
		   Checksum *cksum)
{
    struct _krb5_evp_schedule *ctx = key->schedule->data;
    EVP_MD_CTX *m;
    DES_cblock ivec;
    unsigned char *p = cksum->checksum.data;

    FUNC8(p, 8);

    m = FUNC5();
    if (m == NULL) {
	FUNC9(context, ENOMEM, FUNC7("malloc: out of memory", ""));
	return ENOMEM;
    }

    FUNC3(m, evp_md, NULL);
    FUNC4(m, p, 8);
    FUNC4(m, data, len);
    FUNC2 (m, p + 8, NULL);
    FUNC6(m);
    FUNC10 (&ivec, 0, sizeof(ivec));
    FUNC1(ctx->ectx, NULL, NULL, NULL, (void *)&ivec, -1);
    FUNC0(ctx->ectx, p, p, 24);

    return 0;
}