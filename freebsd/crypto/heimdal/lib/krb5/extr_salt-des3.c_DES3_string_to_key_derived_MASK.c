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
struct TYPE_7__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {TYPE_1__ saltvalue; } ;
typedef  TYPE_2__ krb5_salt ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_9__ {size_t length; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static krb5_error_code
FUNC7(krb5_context context,
			   krb5_enctype enctype,
			   krb5_data password,
			   krb5_salt salt,
			   krb5_data opaque,
			   krb5_keyblock *key)
{
    krb5_error_code ret;
    size_t len = password.length + salt.saltvalue.length;
    char *s;

    s = FUNC4(len);
    if(len != 0 && s == NULL) {
	FUNC2(context, ENOMEM, FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC5(s, password.data, password.length);
    FUNC5(s + password.length, salt.saltvalue.data, salt.saltvalue.length);
    ret = FUNC3(context,
				     s,
				     len,
				     enctype,
				     key);
    FUNC6(s, 0, len);
    FUNC1(s);
    return ret;
}