#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_key_usage ;
typedef  int krb5_flags ;
typedef  scalar_t__ krb5_error_code ;
struct TYPE_20__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/ * krb5_crypto ;
struct TYPE_21__ {int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* krb5_auth_context ;
struct TYPE_23__ {scalar_t__ keytype; } ;
struct TYPE_22__ {TYPE_4__* keyblock; int /*<<< orphan*/ * local_subkey; } ;
typedef  int /*<<< orphan*/  Checksum ;

/* Variables and functions */
 int const AP_OPTS_USE_SUBKEY ; 
 int /*<<< orphan*/  CKSUMTYPE_RSA_MD4 ; 
 int /*<<< orphan*/  CKSUMTYPE_RSA_MD5 ; 
 scalar_t__ ETYPE_ARCFOUR_HMAC_MD5 ; 
 scalar_t__ ETYPE_ARCFOUR_HMAC_MD5_56 ; 
 scalar_t__ ETYPE_DES_CBC_CRC ; 
 scalar_t__ ETYPE_DES_CBC_MD4 ; 
 scalar_t__ ETYPE_DES_CBC_MD5 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*,int const,TYPE_1__,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_4__*) ; 

krb5_error_code
FUNC11(krb5_context context,
		      krb5_auth_context *auth_context,
		      const krb5_flags ap_req_options,
		      krb5_data *in_data,
		      krb5_creds *in_creds,
		      krb5_data *outbuf,
		      krb5_key_usage checksum_usage,
		      krb5_key_usage encrypt_usage)
{
    krb5_error_code ret;
    krb5_data authenticator;
    Checksum c;
    Checksum *c_opt;
    krb5_auth_context ac;

    if(auth_context) {
	if(*auth_context == NULL)
	    ret = FUNC4(context, auth_context);
	else
	    ret = 0;
	ac = *auth_context;
    } else
	ret = FUNC4(context, &ac);
    if(ret)
	return ret;

    if(ac->local_subkey == NULL && (ap_req_options & AP_OPTS_USE_SUBKEY)) {
	ret = FUNC3(context,
						ac,
						&in_creds->session);
	if(ret)
	    goto out;
    }

    FUNC10(context, ac->keyblock);
    ret = FUNC6(context, &in_creds->session, &ac->keyblock);
    if (ret)
	goto out;

    /* it's unclear what type of checksum we can use.  try the best one, except:
     * a) if it's configured differently for the current realm, or
     * b) if the session key is des-cbc-crc
     */

    if (in_data) {
	if(ac->keyblock->keytype == ETYPE_DES_CBC_CRC) {
	    /* this is to make DCE secd (and older MIT kdcs?) happy */
	    ret = FUNC7(context,
				       NULL,
				       0,
				       CKSUMTYPE_RSA_MD4,
				       in_data->data,
				       in_data->length,
				       &c);
	} else if(ac->keyblock->keytype == ETYPE_ARCFOUR_HMAC_MD5 ||
		  ac->keyblock->keytype == ETYPE_ARCFOUR_HMAC_MD5_56 ||
		  ac->keyblock->keytype == ETYPE_DES_CBC_MD4 ||
		  ac->keyblock->keytype == ETYPE_DES_CBC_MD5) {
	    /* this is to make MS kdc happy */
	    ret = FUNC7(context,
				       NULL,
				       0,
				       CKSUMTYPE_RSA_MD5,
				       in_data->data,
				       in_data->length,
				       &c);
	} else {
	    krb5_crypto crypto;

	    ret = FUNC9(context, ac->keyblock, 0, &crypto);
	    if (ret)
		goto out;
	    ret = FUNC7(context,
				       crypto,
				       checksum_usage,
				       0,
				       in_data->data,
				       in_data->length,
				       &c);
	    FUNC8(context, crypto);
	}
	c_opt = &c;
    } else {
	c_opt = NULL;
    }

    if (ret)
	goto out;

    ret = FUNC0(context,
				    ac,
				    ac->keyblock->keytype,
				    in_creds,
				    c_opt,
				    &authenticator,
				    encrypt_usage);
    if (c_opt)
	FUNC1 (c_opt);
    if (ret)
	goto out;

    ret = FUNC5 (context, ac->keyblock->keytype,
			     in_creds, ap_req_options, authenticator, outbuf);
out:
    if(auth_context == NULL)
	FUNC2(context, ac);
    return ret;
}