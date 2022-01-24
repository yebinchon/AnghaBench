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
struct tr_realm {char const* realm; int /*<<< orphan*/  leading_space; scalar_t__ leading_slash; scalar_t__ trailing_dot; struct tr_realm* next; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct tr_realm*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (size_t) ; 
 char* FUNC4 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,size_t) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static int
FUNC8(krb5_context context,
	      struct tr_realm *realms, const char *client_realm)
{
    struct tr_realm *r;
    const char *prev_realm = NULL;
    for(r = realms; r; r = r->next){
	if(r->trailing_dot){
	    char *tmp;
	    size_t len;

	    if(prev_realm == NULL)
		prev_realm = client_realm;

	    len = FUNC7(r->realm) + FUNC7(prev_realm) + 1;

	    tmp = FUNC4(r->realm, len);
	    if(tmp == NULL){
		FUNC1(realms);
		return FUNC2(context);
	    }
	    r->realm = tmp;
	    FUNC5(r->realm, prev_realm, len);
	}else if(r->leading_slash && !r->leading_space && prev_realm){
	    /* yet another exception: if you use x500-names, the
               leading realm doesn't have to be "quoted" with a space */
	    char *tmp;
	    size_t len = FUNC7(r->realm) + FUNC7(prev_realm) + 1;

	    tmp = FUNC3(len);
	    if(tmp == NULL){
		FUNC1(realms);
		return FUNC2(context);
	    }
	    FUNC6(tmp, prev_realm, len);
	    FUNC5(tmp, r->realm, len);
	    FUNC0(r->realm);
	    r->realm = tmp;
	}
	prev_realm = r->realm;
    }
    return 0;
}