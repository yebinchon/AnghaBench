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
typedef  int /*<<< orphan*/  severity ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  facility ;

/* Variables and functions */
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int FUNC2 (char const*,char*,int*,char*,int*) ; 
 char* FUNC3 (char const*,char) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char const*,char*,int) ; 
 int FUNC7 (char const**,char*,char*,int) ; 
 int /*<<< orphan*/  syslogvals ; 

__attribute__((used)) static int
FUNC8(krb5_context context, const char *path, char *data)
{
    /* XXX sync with log.c */
    int min = 0, max = -1, n;
    char c;
    const char *p = data;

    n = FUNC2(p, "%d%c%d/", &min, &c, &max);
    if(n == 2){
	if(c == '/') {
	    if(min < 0){
		max = -min;
		min = 0;
	    }else{
		max = min;
	    }
	}
    }
    if(n){
	p = FUNC3(p, '/');
	if(p == NULL) {
	    FUNC1(context, "%s: failed to parse \"%s\"", path, data);
	    return 1;
	}
	p++;
    }
    if(FUNC4(p, "STDERR") == 0 ||
       FUNC4(p, "CONSOLE") == 0 ||
       (FUNC6(p, "FILE", 4) == 0 && (p[4] == ':' || p[4] == '=')) ||
       (FUNC6(p, "DEVICE", 6) == 0 && p[6] == '='))
	return 0;
    if(FUNC6(p, "SYSLOG", 6) == 0){
	int ret = 0;
	char severity[128] = "";
	char facility[128] = "";
	p += 6;
	if(*p != '\0')
	    p++;
	if(FUNC7(&p, ":", severity, sizeof(severity)) != -1)
	    FUNC7(&p, ":", facility, sizeof(facility));
	if(*severity == '\0')
	    FUNC5(severity, "ERR", sizeof(severity));
 	if(*facility == '\0')
	    FUNC5(facility, "AUTH", sizeof(facility));
	if(FUNC0(severity, syslogvals) == -1) {
	    FUNC1(context, "%s: unknown syslog facility \"%s\"",
		       path, facility);
	    ret++;
	}
	if(FUNC0(severity, syslogvals) == -1) {
	    FUNC1(context, "%s: unknown syslog severity \"%s\"",
		       path, severity);
	    ret++;
	}
	return ret;
    }else{
	FUNC1(context, "%s: unknown log type: \"%s\"", path, data);
	return 1;
    }
}