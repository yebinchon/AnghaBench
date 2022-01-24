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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_config_section ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_CONFIG_BADFORMAT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  krb5_config_list ; 
 char* FUNC1 (char*,char) ; 

__attribute__((used)) static krb5_error_code
FUNC2(char *p, krb5_config_section **s, krb5_config_section **parent,
	      const char **err_message)
{
    char *p1;
    krb5_config_section *tmp;

    p1 = FUNC1 (p + 1, ']');
    if (p1 == NULL) {
	*err_message = "missing ]";
	return KRB5_CONFIG_BADFORMAT;
    }
    *p1 = '\0';
    tmp = FUNC0(parent, p + 1, krb5_config_list);
    if(tmp == NULL) {
	*err_message = "out of memory";
	return KRB5_CONFIG_BADFORMAT;
    }
    *s = tmp;
    return 0;
}