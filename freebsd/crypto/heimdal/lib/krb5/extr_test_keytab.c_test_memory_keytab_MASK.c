#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int vno; int /*<<< orphan*/  keyblock; int /*<<< orphan*/  principal; } ;
typedef  TYPE_1__ krb5_keytab_entry ;
typedef  int /*<<< orphan*/  krb5_keytab ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  entry3 ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  ETYPE_AES256_CTS_HMAC_SHA1_96 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC13(krb5_context context, const char *keytab, const char *keytab2)
{
    krb5_error_code ret;
    krb5_keytab id, id2, id3;
    krb5_keytab_entry entry, entry2, entry3;

    ret = FUNC10(context, keytab, &id);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_resolve");

    FUNC12(&entry, 0, sizeof(entry));
    ret = FUNC11(context, "lha@SU.SE", &entry.principal);
    if (ret)
	FUNC0(context, 1, ret, "krb5_parse_name");
    entry.vno = 1;
    ret = FUNC4(context,
					ETYPE_AES256_CTS_HMAC_SHA1_96,
					&entry.keyblock);
    if (ret)
	FUNC0(context, 1, ret, "krb5_generate_random_keyblock");

    FUNC5(context, id, &entry);

    ret = FUNC10(context, keytab, &id2);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_resolve");

    ret = FUNC8(context, id,
			    entry.principal,
			    0,
			    ETYPE_AES256_CTS_HMAC_SHA1_96,
			    &entry2);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_get_entry");
    FUNC7(context, &entry2);

    ret = FUNC6(context, id);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_close");

    ret = FUNC8(context, id2,
			    entry.principal,
			    0,
			    ETYPE_AES256_CTS_HMAC_SHA1_96,
			    &entry2);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_get_entry");
    FUNC7(context, &entry2);

    ret = FUNC6(context, id2);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_close");


    ret = FUNC10(context, keytab2, &id3);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_resolve");

    FUNC12(&entry3, 0, sizeof(entry3));
    ret = FUNC11(context, "lha3@SU.SE", &entry3.principal);
    if (ret)
	FUNC0(context, 1, ret, "krb5_parse_name");
    entry3.vno = 1;
    ret = FUNC4(context,
					ETYPE_AES256_CTS_HMAC_SHA1_96,
					&entry3.keyblock);
    if (ret)
	FUNC0(context, 1, ret, "krb5_generate_random_keyblock");

    FUNC5(context, id3, &entry3);


    ret = FUNC10(context, keytab, &id);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_resolve");

    ret = FUNC8(context, id,
			    entry.principal,
			    0,
			    ETYPE_AES256_CTS_HMAC_SHA1_96,
			    &entry2);
    if (ret == 0)
	FUNC1(context, 1, "krb5_kt_get_entry when if should fail");

    FUNC9(context, id, &entry);

    ret = FUNC6(context, id);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_close");

    FUNC7(context, &entry);

    FUNC9(context, id3, &entry3);

    ret = FUNC6(context, id3);
    if (ret)
	FUNC0(context, 1, ret, "krb5_kt_close");

    FUNC3(context, entry3.principal);
    FUNC2(context, &entry3.keyblock);
}