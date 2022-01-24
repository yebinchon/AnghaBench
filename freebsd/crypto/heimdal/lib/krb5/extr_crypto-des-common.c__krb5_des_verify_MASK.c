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
typedef  int /*<<< orphan*/  tmp ;
struct _krb5_key_data {TYPE_1__* schedule; } ;
struct _krb5_evp_schedule {int /*<<< orphan*/  dctx; } ;
typedef  int /*<<< orphan*/  res ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  ivec ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_2__ checksum; } ;
struct TYPE_5__ {struct _krb5_evp_schedule* data; } ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  unsigned char DES_cblock ;
typedef  TYPE_3__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KRB5KRB_AP_ERR_BAD_INTEGRITY ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,int /*<<< orphan*/ ,int) ; 

krb5_error_code
FUNC12(krb5_context context,
		 const EVP_MD *evp_md,
		 struct _krb5_key_data *key,
		 const void *data,
		 size_t len,
		 Checksum *C)
{
    struct _krb5_evp_schedule *ctx = key->schedule->data;
    EVP_MD_CTX *m;
    unsigned char tmp[24];
    unsigned char res[16];
    DES_cblock ivec;
    krb5_error_code ret = 0;

    m = FUNC5();
    if (m == NULL) {
	FUNC10(context, ENOMEM, FUNC7("malloc: out of memory", ""));
	return ENOMEM;
    }

    FUNC11(&ivec, 0, sizeof(ivec));
    FUNC1(ctx->dctx, NULL, NULL, NULL, (void *)&ivec, -1);
    FUNC0(ctx->dctx, tmp, C->checksum.data, 24);

    FUNC3(m, evp_md, NULL);
    FUNC4(m, tmp, 8); /* confounder */
    FUNC4(m, data, len);
    FUNC2 (m, res, NULL);
    FUNC6(m);
    if(FUNC8(res, tmp + 8, sizeof(res)) != 0) {
	FUNC9 (context);
	ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
    }
    FUNC11(tmp, 0, sizeof(tmp));
    FUNC11(res, 0, sizeof(res));
    return ret;
}