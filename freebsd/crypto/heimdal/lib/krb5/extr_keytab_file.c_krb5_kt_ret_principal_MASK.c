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
struct fkt_data {int /*<<< orphan*/  filename; } ;
typedef  int /*<<< orphan*/  krb5_storage ;
typedef  TYPE_3__* krb5_principal ;
typedef  int krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  int32_t ;
typedef  scalar_t__ int16_t ;
struct TYPE_7__ {size_t len; int /*<<< orphan*/ * val; } ;
struct TYPE_8__ {int /*<<< orphan*/  name_type; TYPE_1__ name_string; } ;
struct TYPE_9__ {TYPE_2__ name; int /*<<< orphan*/  realm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int ENOMEM ; 
 int KRB5_KT_END ; 
 int /*<<< orphan*/  KRB5_NT_UNKNOWN ; 
 int /*<<< orphan*/  KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE ; 
 int /*<<< orphan*/  KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC9(krb5_context context,
		      struct fkt_data *fkt,
		      krb5_storage *sp,
		      krb5_principal *princ)
{
    size_t i;
    int ret;
    krb5_principal p;
    int16_t len;

    FUNC0(p, 1);
    if(p == NULL) {
	FUNC7(context, ENOMEM,
			       FUNC1("malloc: out of memory", ""));
	return ENOMEM;
    }

    ret = FUNC5(sp, &len);
    if(ret) {
	FUNC7(context, ret,
			       FUNC1("Failed decoding length of "
				  "keytab principal in keytab file %s", ""),
			       fkt->filename);
	goto out;
    }
    if(FUNC8(sp, KRB5_STORAGE_PRINCIPAL_WRONG_NUM_COMPONENTS))
	len--;
    if (len < 0) {
	ret = KRB5_KT_END;
	FUNC7(context, ret,
			       FUNC1("Keytab principal contains "
				  "invalid length in keytab %s", ""),
			       fkt->filename);
	goto out;
    }
    ret = FUNC4(context, sp, &p->realm);
    if(ret) {
	FUNC7(context, ret,
			       FUNC1("Can't read realm from keytab: %s", ""),
			       fkt->filename);
	goto out;
    }
    p->name.name_string.val = FUNC2(len, sizeof(*p->name.name_string.val));
    if(p->name.name_string.val == NULL) {
	ret = ENOMEM;
	FUNC7(context, ret, FUNC1("malloc: out of memory", ""));
	goto out;
    }
    p->name.name_string.len = len;
    for(i = 0; i < p->name.name_string.len; i++){
	ret = FUNC4(context, sp, p->name.name_string.val + i);
	if(ret) {
	    FUNC7(context, ret,
				   FUNC1("Can't read principal from "
				      "keytab: %s", ""),
				   fkt->filename);
	    goto out;
	}
    }
    if (FUNC8(sp, KRB5_STORAGE_PRINCIPAL_NO_NAME_TYPE))
	p->name.name_type = KRB5_NT_UNKNOWN;
    else {
	int32_t tmp32;
	ret = FUNC6(sp, &tmp32);
	p->name.name_type = tmp32;
	if (ret) {
	    FUNC7(context, ret,
				   FUNC1("Can't read name-type from "
				      "keytab: %s", ""),
				   fkt->filename);
	    goto out;
	}
    }
    *princ = p;
    return 0;
out:
    FUNC3(context, p);
    return ret;
}