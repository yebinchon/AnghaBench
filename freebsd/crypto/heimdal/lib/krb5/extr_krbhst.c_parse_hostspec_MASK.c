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
struct krb5_krbhst_info {char* hostname; int port; int def_port; void* proto; } ;
struct krb5_krbhst_data {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 void* KRB5_KRBHST_HTTP ; 
 void* KRB5_KRBHST_TCP ; 
 struct krb5_krbhst_info* FUNC0 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct krb5_krbhst_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 void* FUNC3 (struct krb5_krbhst_data*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (char const*,char) ; 
 size_t FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char const*,char*,int) ; 
 scalar_t__ FUNC11 (char const**,char*,char*,scalar_t__) ; 
 int FUNC12 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct krb5_krbhst_info*
FUNC13(krb5_context context, struct krb5_krbhst_data *kd,
	       const char *spec, int def_port, int port)
{
    const char *p = spec, *q;
    struct krb5_krbhst_info *hi;

    hi = FUNC0(1, sizeof(*hi) + FUNC8(spec));
    if(hi == NULL)
	return NULL;

    hi->proto = FUNC3(kd);

    if(FUNC10(p, "http://", 7) == 0){
	hi->proto = KRB5_KRBHST_HTTP;
	p += 7;
    } else if(FUNC10(p, "http/", 5) == 0) {
	hi->proto = KRB5_KRBHST_HTTP;
	p += 5;
	def_port = FUNC5(FUNC2 (context, "http", "tcp", 80));
    }else if(FUNC10(p, "tcp/", 4) == 0){
	hi->proto = KRB5_KRBHST_TCP;
	p += 4;
    } else if(FUNC10(p, "udp/", 4) == 0) {
	p += 4;
    }

    if (p[0] == '[' && (q = FUNC6(p, ']')) != NULL) {
	/* if address looks like [foo:bar] or [foo:bar]: its a ipv6
	   adress, strip of [] */
	FUNC4(hi->hostname, &p[1], q - p - 1);
	hi->hostname[q - p - 1] = '\0';
	p = q + 1;
	/* get trailing : */
	if (p[0] == ':')
	    p++;
    } else if(FUNC11(&p, ":", hi->hostname, FUNC8(spec) + 1) < 0) {
	/* copy everything before : */
	FUNC1(hi);
	return NULL;
    }
    /* get rid of trailing /, and convert to lower case */
    hi->hostname[FUNC7(hi->hostname, "/")] = '\0';
    FUNC9(hi->hostname);

    hi->port = hi->def_port = def_port;
    if(p != NULL && p[0]) {
	char *end;
	hi->port = FUNC12(p, &end, 0);
	if(end == p) {
	    FUNC1(hi);
	    return NULL;
	}
    }
    if (port)
	hi->port = port;
    return hi;
}