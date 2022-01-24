#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_salt ;
struct TYPE_5__ {size_t length; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__ keyvalue; } ;
typedef  TYPE_2__ krb5_keyblock ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,...) ; 

__attribute__((used)) static void
FUNC6(krb5_context context,
      krb5_enctype enctype,
      const char *pw,
      krb5_salt salt,
      const char *label)
{
    krb5_error_code ret;
    size_t i;
    krb5_keyblock key;
    char *e;

    ret = FUNC4(context, enctype, pw, salt, &key);
    if (ret)
	FUNC2(context, 1, ret, "krb5_string_to_key_salt");
    ret = FUNC1(context, enctype, &e);
    if (ret)
	FUNC2(context, 1, ret, "krb5_enctype_to_string");
    FUNC5(label, e);
    FUNC5(": ");
    for(i = 0; i < key.keyvalue.length; i++)
	FUNC5("%02x", ((unsigned char*)key.keyvalue.data)[i]);
    FUNC5("\n");
    FUNC3(context, &key);
    FUNC0(e);
}