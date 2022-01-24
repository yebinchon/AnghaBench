#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_salt ;
struct TYPE_4__ {scalar_t__* key_data_contents; int /*<<< orphan*/ * key_data_length; int /*<<< orphan*/ * key_data_type; } ;
typedef  TYPE_1__ krb5_key_data ;
typedef  scalar_t__ krb5_error_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  context ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,size_t) ; 

__attribute__((used)) static void
FUNC8(krb5_key_data *k, krb5_salt *def_salt, char *buf, size_t buf_len)
{
    krb5_error_code ret;
    char *s;

    ret = FUNC3 (context,
				  k->key_data_type[0],
				  &s);
    if (ret)
	FUNC0 (&s, "unknown(%d)", k->key_data_type[0]);
    FUNC7(buf, s, buf_len);
    FUNC2(s);

    FUNC6(buf, "(", buf_len);

    ret = FUNC4 (context,
				   k->key_data_type[0],
				   k->key_data_type[1],
				   &s);
    if (ret)
	FUNC0 (&s, "unknown(%d)", k->key_data_type[1]);
    FUNC6(buf, s, buf_len);
    FUNC2(s);

    if (FUNC1(def_salt, k) == 0)
	s = FUNC5("");
    else if(k->key_data_length[1] == 0)
	s = FUNC5("()");
    else
	FUNC0 (&s, "(%.*s)", k->key_data_length[1],
		  (char *)k->key_data_contents[1]);
    FUNC6(buf, s, buf_len);
    FUNC2(s);

    FUNC6(buf, ")", buf_len);
}