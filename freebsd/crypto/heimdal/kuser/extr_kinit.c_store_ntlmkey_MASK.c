#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ntlm_buf {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  krb5_ccache ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context, krb5_ccache id,
	      const char *domain, struct ntlm_buf *buf)
{
    krb5_error_code ret;
    krb5_data data;
    char *name;

    FUNC0(&name, "ntlm-key-%s", domain);
    if (name == NULL) {
	FUNC3(context);
	return ENOMEM;
    }

    data.length = buf->length;
    data.data = buf->data;

    ret = FUNC2(context, id, NULL, name, &data);
    FUNC1(name);
    return ret;
}