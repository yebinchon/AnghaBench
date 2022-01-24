#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_6__ {scalar_t__ len; } ;
typedef  TYPE_1__ krb5_authdata ;
struct TYPE_7__ {unsigned char* enc_authorization_data; } ;
typedef  TYPE_2__ KDC_REQ_BODY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,size_t,TYPE_1__*,size_t*,scalar_t__) ; 
 int /*<<< orphan*/  AuthorizationData ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ ,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC9 (krb5_context context,
	       KDC_REQ_BODY *req_body,
	       krb5_authdata *authdata,
	       krb5_keyblock *subkey)
{
    if(authdata->len) {
	size_t len = 0, buf_size;
	unsigned char *buf;
	krb5_crypto crypto;
	krb5_error_code ret;

	FUNC1(AuthorizationData, buf, buf_size, authdata,
			   &len, ret);
	if (ret)
	    return ret;
	if (buf_size != len)
	    FUNC4(context, "internal error in ASN.1 encoder");

	FUNC0(req_body->enc_authorization_data, 1);
	if (req_body->enc_authorization_data == NULL) {
	    FUNC3 (buf);
	    FUNC8(context, ENOMEM,
				   FUNC2("malloc: out of memory", ""));
	    return ENOMEM;
	}
	ret = FUNC6(context, subkey, 0, &crypto);
	if (ret) {
	    FUNC3 (buf);
	    FUNC3 (req_body->enc_authorization_data);
	    req_body->enc_authorization_data = NULL;
	    return ret;
	}
	FUNC7(context,
				   crypto,
				   KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY,
				   buf,
				   len,
				   0,
				   req_body->enc_authorization_data);
	FUNC3 (buf);
	FUNC5(context, crypto);
    } else {
	req_body->enc_authorization_data = NULL;
    }
    return 0;
}