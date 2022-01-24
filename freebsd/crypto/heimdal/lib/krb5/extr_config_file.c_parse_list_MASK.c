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
struct fileptr {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_config_binding ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int KRB5_BUFSIZ ; 
 int /*<<< orphan*/  KRB5_CONFIG_BADFORMAT ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,struct fileptr*) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (struct fileptr*,unsigned int*,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const**) ; 
 size_t FUNC3 (char*,char*) ; 

__attribute__((used)) static krb5_error_code
FUNC4(struct fileptr *f, unsigned *lineno, krb5_config_binding **parent,
	   const char **err_message)
{
    char buf[KRB5_BUFSIZ];
    krb5_error_code ret;
    krb5_config_binding *b = NULL;
    unsigned beg_lineno = *lineno;

    while(FUNC0(buf, sizeof(buf), f) != NULL) {
	char *p;

	++*lineno;
	buf[FUNC3(buf, "\r\n")] = '\0';
	p = buf;
	while(FUNC1((unsigned char)*p))
	    ++p;
	if (*p == '#' || *p == ';' || *p == '\0')
	    continue;
	while(FUNC1((unsigned char)*p))
	    ++p;
	if (*p == '}')
	    return 0;
	if (*p == '\0')
	    continue;
	ret = FUNC2 (f, lineno, p, &b, parent, err_message);
	if (ret)
	    return ret;
    }
    *lineno = beg_lineno;
    *err_message = "unclosed {";
    return KRB5_CONFIG_BADFORMAT;
}