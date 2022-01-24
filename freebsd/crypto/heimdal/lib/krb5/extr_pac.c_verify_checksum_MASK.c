#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct PAC_INFO_BUFFER {int offset_lo; scalar_t__ buffersize; } ;
typedef  int /*<<< orphan*/  local_checksum ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int krb5_error_code ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/ * krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  cksum ;
struct TYPE_12__ {int /*<<< orphan*/ * data; scalar_t__ length; } ;
struct TYPE_11__ {scalar_t__ cksumtype; TYPE_6__ checksum; } ;
typedef  TYPE_2__ Checksum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ CKSUMTYPE_HMAC_MD5 ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,void*,size_t,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int KRB5KRB_AP_ERR_BAD_INTEGRITY ; 
 int /*<<< orphan*/  KRB5_KU_OTHER_CKSUM ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 char* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC7 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 (char*,scalar_t__) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  out ; 

__attribute__((used)) static krb5_error_code
FUNC20(krb5_context context,
		const struct PAC_INFO_BUFFER *sig,
		const krb5_data *data,
		void *ptr, size_t len,
		const krb5_keyblock *key)
{
    krb5_storage *sp = NULL;
    uint32_t type;
    krb5_error_code ret;
    Checksum cksum;

    FUNC19(&cksum, 0, sizeof(cksum));

    sp = FUNC13((char *)data->data + sig->offset_lo,
			       sig->buffersize);
    if (sp == NULL)
	return FUNC9(context);

    FUNC16(sp, KRB5_STORAGE_BYTEORDER_LE);

    FUNC0(ret, FUNC10(sp, &type), out);
    cksum.cksumtype = type;
    cksum.checksum.length =
	sig->buffersize - FUNC15(sp, 0, SEEK_CUR);
    cksum.checksum.data = FUNC18(cksum.checksum.length);
    if (cksum.checksum.data == NULL) {
	ret = FUNC9(context);
	goto out;
    }
    ret = FUNC14(sp, cksum.checksum.data, cksum.checksum.length);
    if (ret != (int)cksum.checksum.length) {
	ret = EINVAL;
	FUNC11(context, ret, "PAC checksum missing checksum");
	goto out;
    }

    if (!FUNC4(context, cksum.cksumtype)) {
	ret = EINVAL;
	FUNC11(context, ret, "Checksum type %d not keyed",
			       cksum.cksumtype);
	goto out;
    }

    /* If the checksum is HMAC-MD5, the checksum type is not tied to
     * the key type, instead the HMAC-MD5 checksum is applied blindly
     * on whatever key is used for this connection, avoiding issues
     * with unkeyed checksums on des-cbc-md5 and des-cbc-crc.  See
     * http://comments.gmane.org/gmane.comp.encryption.kerberos.devel/8743
     * for the same issue in MIT, and
     * http://blogs.msdn.com/b/openspecification/archive/2010/01/01/verifying-the-server-signature-in-kerberos-privilege-account-certificate.aspx
     * for Microsoft's explaination */

    if (cksum.cksumtype == CKSUMTYPE_HMAC_MD5) {
	Checksum local_checksum;

	FUNC19(&local_checksum, 0, sizeof(local_checksum));

	ret = FUNC1(context, key, ptr, len,
				    KRB5_KU_OTHER_CKSUM, &local_checksum);

	if (ret != 0 || FUNC7(&local_checksum.checksum, &cksum.checksum) != 0) {
	    ret = KRB5KRB_AP_ERR_BAD_INTEGRITY;
	    FUNC11(context, ret,
				   FUNC2("PAC integrity check failed for "
				      "hmac-md5 checksum", ""));
	}
	FUNC8(&local_checksum.checksum);

   } else {
	krb5_crypto crypto = NULL;

	ret = FUNC6(context, key, 0, &crypto);
	if (ret)
		goto out;

	ret = FUNC17(context, crypto, KRB5_KU_OTHER_CKSUM,
				   ptr, len, &cksum);
	FUNC5(context, crypto);
    }
    FUNC3(cksum.checksum.data);
    FUNC12(sp);

    return ret;

out:
    if (cksum.checksum.data)
	FUNC3(cksum.checksum.data);
    if (sp)
	FUNC12(sp);
    return ret;
}