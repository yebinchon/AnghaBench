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
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (char*,char*,char**) ; 

__attribute__((used)) static void
FUNC7(krb5_context context,
	    krb5_kdc_configuration *config,
	    const char *str)
{
    char *pos = NULL;
    char *p;
    char *str_copy = FUNC5 (str);

    p = FUNC6(str_copy, " \t", &pos);
    while(p != NULL) {
	if(FUNC4(p, "+") == 0) {
#ifdef HAVE_IPV6
	    add_standard_ports(context, config, AF_INET6);
#endif
	    FUNC1(context, config, AF_INET);
	} else {
	    char *q = FUNC3(p, '/');
	    if(q){
		*q++ = 0;
#ifdef HAVE_IPV6
		add_port_string(context, AF_INET6, p, q);
#endif
		FUNC0(context, AF_INET, p, q);
	    }else {
#ifdef HAVE_IPV6
		add_port_string(context, AF_INET6, p, "udp");
		add_port_string(context, AF_INET6, p, "tcp");
#endif
		FUNC0(context, AF_INET, p, "udp");
		FUNC0(context, AF_INET, p, "tcp");
	    }
	}

	p = FUNC6(NULL, " \t", &pos);
    }
    FUNC2 (str_copy);
}