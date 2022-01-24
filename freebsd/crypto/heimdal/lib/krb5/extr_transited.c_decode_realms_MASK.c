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
struct tr_realm {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 struct tr_realm* FUNC0 (struct tr_realm*,struct tr_realm*) ; 
 int /*<<< orphan*/  FUNC1 (struct tr_realm*) ; 
 int /*<<< orphan*/  FUNC2 (struct tr_realm*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct tr_realm* FUNC4 (char*) ; 
 char* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static int
FUNC7(krb5_context context,
	      const char *tr, int length, struct tr_realm **realms)
{
    struct tr_realm *r = NULL;

    char *tmp;
    int quote = 0;
    const char *start = tr;
    int i;

    for(i = 0; i < length; i++){
	if(quote){
	    quote = 0;
	    continue;
	}
	if(tr[i] == '\\'){
	    quote = 1;
	    continue;
	}
	if(tr[i] == ','){
	    tmp = FUNC5(tr + i - start + 1);
	    if(tmp == NULL)
		return FUNC3(context);
	    FUNC6(tmp, start, tr + i - start);
	    tmp[tr + i - start] = '\0';
	    r = FUNC4(tmp);
	    if(r == NULL){
		FUNC2(*realms);
		return FUNC3(context);
	    }
	    *realms = FUNC0(*realms, r);
	    start = tr + i + 1;
	}
    }
    tmp = FUNC5(tr + i - start + 1);
    if(tmp == NULL){
	FUNC1(*realms);
	return FUNC3(context);
    }
    FUNC6(tmp, start, tr + i - start);
    tmp[tr + i - start] = '\0';
    r = FUNC4(tmp);
    if(r == NULL){
	FUNC2(*realms);
	return FUNC3(context);
    }
    *realms = FUNC0(*realms, r);

    return 0;
}