#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint64_t ;
typedef  char uint16_t ;
typedef  int /*<<< orphan*/  ucs2 ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_const_principal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KRB5_PRINCIPAL_UNPARSE_NO_REALM ; 
 int /*<<< orphan*/  KRB5_STORAGE_BYTEORDER_LE ; 
 unsigned int WIND_RW_LE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  out ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (char*,size_t,unsigned int*,char*,size_t*) ; 
 int FUNC16 (char*,char*,size_t*) ; 
 int FUNC17 (char*,size_t*) ; 

__attribute__((used)) static krb5_error_code
FUNC18(krb5_context context,
		 time_t authtime,
		 krb5_const_principal principal,
		 krb5_data *logon)
{
    krb5_error_code ret;
    krb5_storage *sp;
    uint64_t t;
    char *s, *s2;
    size_t s2_len;

    t = FUNC14(authtime);

    FUNC2(logon);

    sp = FUNC5();
    if (sp == NULL)
	return FUNC3(context);

    FUNC7(sp, KRB5_STORAGE_BYTEORDER_LE);

    FUNC0(ret, FUNC11(sp, t & 0xffffffff), out);
    FUNC0(ret, FUNC11(sp, t >> 32), out);

    ret = FUNC12(context, principal,
				  KRB5_PRINCIPAL_UNPARSE_NO_REALM, &s);
    if (ret)
	goto out;

    {
	size_t ucs2_len;
	uint16_t *ucs2;
	unsigned int flags;

	ret = FUNC17(s, &ucs2_len);
	if (ret) {
	    FUNC1(s);
	    FUNC4(context, ret, "Failed to count length of UTF-8 string");
	    return ret;
	}

	ucs2 = FUNC13(sizeof(ucs2[0]) * ucs2_len);
	if (ucs2 == NULL) {
	    FUNC1(s);
	    return FUNC3(context);
	}

	ret = FUNC16(s, ucs2, &ucs2_len);
	FUNC1(s);
	if (ret) {
	    FUNC1(ucs2);
	    FUNC4(context, ret, "Failed to convert string to UCS-2");
	    return ret;
	}

	s2_len = (ucs2_len + 1) * 2;
	s2 = FUNC13(s2_len);
	if (ucs2 == NULL) {
	    FUNC1(ucs2);
	    return FUNC3(context);
	}

	flags = WIND_RW_LE;
	ret = FUNC15(ucs2, ucs2_len,
			     &flags, s2, &s2_len);
	FUNC1(ucs2);
	if (ret) {
	    FUNC1(s2);
	    FUNC4(context, ret, "Failed to write to UCS-2 buffer");
	    return ret;
	}

	/*
	 * we do not want zero termination
	 */
	s2_len = ucs2_len * 2;
    }

    FUNC0(ret, FUNC10(sp, s2_len), out);

    ret = FUNC9(sp, s2, s2_len);
    FUNC1(s2);
    if (ret != (int)s2_len) {
	ret = FUNC3(context);
	goto out;
    }
    ret = FUNC8(sp, logon);
    if (ret)
	goto out;
    FUNC6(sp);

    return 0;
out:
    FUNC6(sp);
    return ret;
}