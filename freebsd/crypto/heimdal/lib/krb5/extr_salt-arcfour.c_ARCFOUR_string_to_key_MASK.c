#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  s ;
typedef  int /*<<< orphan*/  krb5_salt ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_7__ {TYPE_3__ keyvalue; int /*<<< orphan*/  keytype; } ;
typedef  TYPE_1__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int* FUNC10 (size_t) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int*,size_t*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static krb5_error_code
FUNC14(krb5_context context,
		      krb5_enctype enctype,
		      krb5_data password,
		      krb5_salt salt,
		      krb5_data opaque,
		      krb5_keyblock *key)
{
    krb5_error_code ret;
    uint16_t *s = NULL;
    size_t len = 0, i;
    EVP_MD_CTX *m;

    m = FUNC3();
    if (m == NULL) {
	ret = ENOMEM;
	FUNC9(context, ret, FUNC6("malloc: out of memory", ""));
	goto out;
    }

    FUNC1(m, FUNC5(), NULL);

    ret = FUNC13(password.data, &len);
    if (ret) {
	FUNC9 (context, ret,
				FUNC6("Password not an UCS2 string", ""));
	goto out;
    }

    s = FUNC10 (len * sizeof(s[0]));
    if (len != 0 && s == NULL) {
	FUNC9 (context, ENOMEM,
				FUNC6("malloc: out of memory", ""));
	ret = ENOMEM;
	goto out;
    }

    ret = FUNC12(password.data, s, &len);
    if (ret) {
	FUNC9 (context, ret,
				FUNC6("Password not an UCS2 string", ""));
	goto out;
    }

    /* LE encoding */
    for (i = 0; i < len; i++) {
	unsigned char p;
	p = (s[i] & 0xff);
	FUNC2 (m, &p, 1);
	p = (s[i] >> 8) & 0xff;
	FUNC2 (m, &p, 1);
    }

    key->keytype = enctype;
    ret = FUNC8 (&key->keyvalue, 16);
    if (ret) {
	FUNC9 (context, ENOMEM, FUNC6("malloc: out of memory", ""));
	goto out;
    }
    FUNC0 (m, key->keyvalue.data, NULL);

 out:
    FUNC4(m);
    if (s)
	FUNC11 (s, 0, len);
    FUNC7 (s);
    return ret;
}