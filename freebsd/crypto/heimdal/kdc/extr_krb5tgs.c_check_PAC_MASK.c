#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_pac ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_entry_ex ;
struct TYPE_11__ {unsigned int len; TYPE_2__* val; } ;
struct TYPE_10__ {int /*<<< orphan*/  authtime; TYPE_4__* authorization_data; } ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {scalar_t__ ad_type; TYPE_1__ ad_data; } ;
typedef  int /*<<< orphan*/  EncryptionKey ;
typedef  TYPE_3__ EncTicketPart ;
typedef  TYPE_4__ AuthorizationData ;

/* Variables and functions */
 scalar_t__ KRB5_AUTHDATA_IF_RELEVANT ; 
 scalar_t__ KRB5_AUTHDATA_WIN2K_PAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC8(krb5_context context,
	  krb5_kdc_configuration *config,
	  const krb5_principal client_principal,
	  const krb5_principal delegated_proxy_principal,
	  hdb_entry_ex *client,
	  hdb_entry_ex *server,
	  hdb_entry_ex *krbtgt,
	  const EncryptionKey *server_check_key,
	  const EncryptionKey *krbtgt_check_key,
	  const EncryptionKey *server_sign_key,
	  const EncryptionKey *krbtgt_sign_key,
	  EncTicketPart *tkt,
	  krb5_data *rspac,
	  int *signedpath)
{
    AuthorizationData *ad = tkt->authorization_data;
    unsigned i, j;
    krb5_error_code ret;

    if (ad == NULL || ad->len == 0)
	return 0;

    for (i = 0; i < ad->len; i++) {
	AuthorizationData child;

	if (ad->val[i].ad_type != KRB5_AUTHDATA_IF_RELEVANT)
	    continue;

	ret = FUNC2(ad->val[i].ad_data.data,
				       ad->val[i].ad_data.length,
				       &child,
				       NULL);
	if (ret) {
	    FUNC7(context, ret, "Failed to decode "
				   "IF_RELEVANT with %d", ret);
	    return ret;
	}
	for (j = 0; j < child.len; j++) {

	    if (child.val[j].ad_type == KRB5_AUTHDATA_WIN2K_PAC) {
		int signed_pac = 0;
		krb5_pac pac;

		/* Found PAC */
		ret = FUNC5(context,
				     child.val[j].ad_data.data,
				     child.val[j].ad_data.length,
				     &pac);
		FUNC3(&child);
		if (ret)
		    return ret;

		ret = FUNC6(context, pac, tkt->authtime,
				      client_principal,
				      server_check_key, krbtgt_check_key);
		if (ret) {
		    FUNC4(context, pac);
		    return ret;
		}

		ret = FUNC0(context, client_principal,
				      delegated_proxy_principal,
				      client, server, krbtgt, &pac, &signed_pac);
		if (ret) {
		    FUNC4(context, pac);
		    return ret;
		}

		/*
		 * Only re-sign PAC if we could verify it with the PAC
		 * function. The no-verify case happens when we get in
		 * a PAC from cross realm from a Windows domain and
		 * that there is no PAC verification function.
		 */
		if (signed_pac) {
		    *signedpath = 1;
		    ret = FUNC1(context, pac, tkt->authtime,
					 client_principal,
					 server_sign_key, krbtgt_sign_key, rspac);
		}
		FUNC4(context, pac);

		return ret;
	    }
	}
	FUNC3(&child);
    }
    return 0;
}