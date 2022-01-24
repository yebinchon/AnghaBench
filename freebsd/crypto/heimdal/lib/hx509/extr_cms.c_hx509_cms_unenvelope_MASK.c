#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  ivec ;
typedef  int /*<<< orphan*/  hx509_crypto ;
typedef  int /*<<< orphan*/  hx509_context ;
typedef  int /*<<< orphan*/  hx509_certs ;
typedef  int /*<<< orphan*/ * hx509_cert ;
struct TYPE_30__ {int /*<<< orphan*/  algorithm; TYPE_4__* parameters; } ;
struct TYPE_26__ {TYPE_9__ contentEncryptionAlgorithm; int /*<<< orphan*/  contentType; TYPE_5__* encryptedContent; } ;
struct TYPE_24__ {size_t len; TYPE_7__* val; } ;
struct TYPE_28__ {scalar_t__ length; int /*<<< orphan*/  data; TYPE_3__ encryptedContentInfo; TYPE_1__ recipientInfos; } ;
typedef  TYPE_5__ heim_oid ;
typedef  TYPE_5__ heim_octet_string ;
typedef  int /*<<< orphan*/  ed ;
struct TYPE_25__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_29__ {int /*<<< orphan*/  rid; TYPE_2__ keyEncryptionAlgorithm; int /*<<< orphan*/  encryptedKey; } ;
struct TYPE_27__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_7__ KeyTransRecipientInfo ;
typedef  TYPE_5__ EnvelopedData ;
typedef  TYPE_9__ AlgorithmIdentifier ;

/* Variables and functions */
 int HX509_CMS_NO_DATA_AVAILABLE ; 
 int HX509_CMS_NO_RECIPIENT_CERTIFICATE ; 
 int HX509_CMS_UE_ALLOW_WEAK ; 
 int HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT ; 
 int /*<<< orphan*/  HX509_ERROR_APPEND ; 
 int HX509_QUERY_KU_ENCIPHERMENT ; 
 int HX509_QUERY_PRIVATE_KEY ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int FUNC1 (void const*,size_t,TYPE_5__*,size_t*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 

int
FUNC18(hx509_context context,
		     hx509_certs certs,
		     int flags,
		     const void *data,
		     size_t length,
		     const heim_octet_string *encryptedContent,
		     time_t time_now,
		     heim_oid *contentType,
		     heim_octet_string *content)
{
    heim_octet_string key;
    EnvelopedData ed;
    hx509_cert cert;
    AlgorithmIdentifier *ai;
    const heim_octet_string *enccontent;
    heim_octet_string *params, params_data;
    heim_octet_string ivec;
    size_t size;
    int ret, matched = 0, findflags = 0;
    size_t i;


    FUNC16(&key, 0, sizeof(key));
    FUNC16(&ed, 0, sizeof(ed));
    FUNC16(&ivec, 0, sizeof(ivec));
    FUNC16(content, 0, sizeof(*content));
    FUNC16(contentType, 0, sizeof(*contentType));

    if ((flags & HX509_CMS_UE_DONT_REQUIRE_KU_ENCIPHERMENT) == 0)
	findflags |= HX509_QUERY_KU_ENCIPHERMENT;

    ret = FUNC1(data, length, &ed, &size);
    if (ret) {
	FUNC15(context, 0, ret,
			       "Failed to decode EnvelopedData");
	return ret;
    }

    if (ed.recipientInfos.len == 0) {
	ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
	FUNC15(context, 0, ret,
			       "No recipient info in enveloped data");
	goto out;
    }

    enccontent = ed.encryptedContentInfo.encryptedContent;
    if (enccontent == NULL) {
	if (encryptedContent == NULL) {
	    ret = HX509_CMS_NO_DATA_AVAILABLE;
	    FUNC15(context, 0, ret,
				   "Content missing from encrypted data");
	    goto out;
	}
	enccontent = encryptedContent;
    } else if (encryptedContent != NULL) {
	ret = HX509_CMS_NO_DATA_AVAILABLE;
	FUNC15(context, 0, ret,
			       "Both internal and external encrypted data");
	goto out;
    }

    cert = NULL;
    for (i = 0; i < ed.recipientInfos.len; i++) {
	KeyTransRecipientInfo *ri;
	char *str;
	int ret2;

	ri = &ed.recipientInfos.val[i];

	ret = FUNC5(context, &ri->rid, certs,
				 time_now, &cert,
				 HX509_QUERY_PRIVATE_KEY|findflags);
	if (ret)
	    continue;

	matched = 1; /* found a matching certificate, let decrypt */

	ret = FUNC0(context,
					  &ri->encryptedKey,
					  &ri->keyEncryptionAlgorithm.algorithm,
					  cert, &key);

	FUNC8(cert);
	if (ret == 0)
	    break; /* succuessfully decrypted cert */
	cert = NULL;
	ret2 = FUNC17(context, &ri->rid, &str);
	if (ret2 == 0) {
	    FUNC15(context, HX509_ERROR_APPEND, ret,
				   "Failed to decrypt with %s", str);
	    FUNC6(str);
	}
    }

    if (!matched) {
	ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
	FUNC15(context, 0, ret,
			       "No private key matched any certificate");
	goto out;
    }

    if (cert == NULL) {
	ret = HX509_CMS_NO_RECIPIENT_CERTIFICATE;
	FUNC15(context, HX509_ERROR_APPEND, ret,
			       "No private key decrypted the transfer key");
	goto out;
    }

    ret = FUNC2(&ed.encryptedContentInfo.contentType, contentType);
    if (ret) {
	FUNC15(context, 0, ret,
			       "Failed to copy EnvelopedData content oid");
	goto out;
    }

    ai = &ed.encryptedContentInfo.contentEncryptionAlgorithm;
    if (ai->parameters) {
	params_data.data = ai->parameters->data;
	params_data.length = ai->parameters->length;
	params = &params_data;
    } else
	params = NULL;

    {
	hx509_crypto crypto;

	ret = FUNC12(context, NULL, &ai->algorithm, &crypto);
	if (ret)
	    goto out;

	if (flags & HX509_CMS_UE_ALLOW_WEAK)
	    FUNC9(crypto);

	if (params) {
	    ret = FUNC14(context, crypto, params, &ivec);
	    if (ret) {
		FUNC11(crypto);
		goto out;
	    }
	}

	ret = FUNC13(crypto, key.data, key.length);
	if (ret) {
	    FUNC11(crypto);
	    FUNC15(context, 0, ret,
				   "Failed to set key for decryption "
				   "of EnvelopedData");
	    goto out;
	}

	ret = FUNC10(crypto,
				   enccontent->data,
				   enccontent->length,
				   ivec.length ? &ivec : NULL,
				   content);
	FUNC11(crypto);
	if (ret) {
	    FUNC15(context, 0, ret,
				   "Failed to decrypt EnvelopedData");
	    goto out;
	}
    }

out:

    FUNC7(&ed);
    FUNC3(&key);
    if (ivec.length)
	FUNC3(&ivec);
    if (ret) {
	FUNC4(contentType);
	FUNC3(content);
    }

    return ret;
}