#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct fileptr {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
struct TYPE_7__ {int /*<<< orphan*/  string; int /*<<< orphan*/  list; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
typedef  TYPE_2__ krb5_config_binding ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CONFIG_BADFORMAT ; 
 TYPE_2__* FUNC0 (TYPE_2__**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  krb5_config_list ; 
 int /*<<< orphan*/  krb5_config_string ; 
 int /*<<< orphan*/  FUNC2 (struct fileptr*,unsigned int*,int /*<<< orphan*/ *,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC5(struct fileptr *f, unsigned *lineno, char *p,
	      krb5_config_binding **b, krb5_config_binding **parent,
	      const char **err_message)
{
    krb5_config_binding *tmp;
    char *p1, *p2;
    krb5_error_code ret = 0;

    p1 = p;
    while (*p && *p != '=' && !FUNC1((unsigned char)*p))
	++p;
    if (*p == '\0') {
	*err_message = "missing =";
	return KRB5_CONFIG_BADFORMAT;
    }
    p2 = p;
    while (FUNC1((unsigned char)*p))
	++p;
    if (*p != '=') {
	*err_message = "missing =";
	return KRB5_CONFIG_BADFORMAT;
    }
    ++p;
    while(FUNC1((unsigned char)*p))
	++p;
    *p2 = '\0';
    if (*p == '{') {
	tmp = FUNC0(parent, p1, krb5_config_list);
	if (tmp == NULL) {
	    *err_message = "out of memory";
	    return KRB5_CONFIG_BADFORMAT;
	}
	ret = FUNC2 (f, lineno, &tmp->u.list, err_message);
    } else {
	tmp = FUNC0(parent, p1, krb5_config_string);
	if (tmp == NULL) {
	    *err_message = "out of memory";
	    return KRB5_CONFIG_BADFORMAT;
	}
	p1 = p;
	p = p1 + FUNC4(p1);
	while(p > p1 && FUNC1((unsigned char)*(p-1)))
	    --p;
	*p = '\0';
	tmp->u.string = FUNC3(p1);
    }
    *b = tmp;
    return ret;
}