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
struct rk_dns_reply {int /*<<< orphan*/  head; } ;
typedef  int /*<<< orphan*/  krb5_realm ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  dom ;

/* Variables and functions */
 int MAXHOSTNAMELEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct rk_dns_reply*) ; 
 struct rk_dns_reply* FUNC4 (char*,char*) ; 
 int FUNC5 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static int
FUNC6(krb5_context context,
	       const char *domain,
	       krb5_realm **realms)
{
    static const char *default_labels[] = { "_kerberos", NULL };
    char dom[MAXHOSTNAMELEN];
    struct rk_dns_reply *r;
    const char **labels;
    char **config_labels;
    int i, ret;

    config_labels = FUNC2(context, NULL, "libdefaults",
					    "dns_lookup_realm_labels", NULL);
    if(config_labels != NULL)
	labels = (const char **)config_labels;
    else
	labels = default_labels;
    if(*domain == '.')
	domain++;
    for (i = 0; labels[i] != NULL; i++) {
	ret = FUNC5(dom, sizeof(dom), "%s.%s.", labels[i], domain);
	if(ret < 0 || (size_t)ret >= sizeof(dom)) {
	    if (config_labels)
		FUNC1(config_labels);
	    return -1;
	}
    	r = FUNC4(dom, "TXT");
    	if(r != NULL) {
	    ret = FUNC0 (r->head, realms);
	    FUNC3(r);
	    if(ret == 0) {
		if (config_labels)
		    FUNC1(config_labels);
		return 0;
	    }
	}
    }
    if (config_labels)
	FUNC1(config_labels);
    return -1;
}