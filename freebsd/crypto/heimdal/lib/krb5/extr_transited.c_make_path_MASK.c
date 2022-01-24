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
struct tr_realm {char* realm; struct tr_realm* next; } ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int KRB5KDC_ERR_POLICY ; 
 struct tr_realm* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tr_realm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (char const*,char) ; 
 scalar_t__ FUNC7 (char const*,char const*) ; 
 char* FUNC8 (char const*) ; 
 int FUNC9 (char const*) ; 
 scalar_t__ FUNC10 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC11(krb5_context context, struct tr_realm *r,
	  const char *from, const char *to)
{
    struct tr_realm *tmp;
    const char *p;

    if(FUNC9(from) < FUNC9(to)){
	const char *str;
	str = from;
	from = to;
	to = str;
    }

    if(FUNC7(from + FUNC9(from) - FUNC9(to), to) == 0){
	p = from;
	while(1){
	    p = FUNC6(p, '.');
	    if(p == NULL) {
		FUNC2 (context);
		return KRB5KDC_ERR_POLICY;
	    }
	    p++;
	    if(FUNC7(p, to) == 0)
		break;
	    tmp = FUNC0(1, sizeof(*tmp));
	    if(tmp == NULL)
		return FUNC3(context);
	    tmp->next = r->next;
	    r->next = tmp;
	    tmp->realm = FUNC8(p);
	    if(tmp->realm == NULL){
		r->next = tmp->next;
		FUNC1(tmp);
		return FUNC3(context);
	    }
	}
    }else if(FUNC10(from, to, FUNC9(to)) == 0){
	p = from + FUNC9(from);
	while(1){
	    while(p >= from && *p != '/') p--;
	    if(p == from)
		return KRB5KDC_ERR_POLICY;

	    if(FUNC10(to, from, p - from) == 0)
		break;
	    tmp = FUNC0(1, sizeof(*tmp));
	    if(tmp == NULL)
		return FUNC3(context);
	    tmp->next = r->next;
	    r->next = tmp;
	    tmp->realm = FUNC4(p - from + 1);
	    if(tmp->realm == NULL){
		r->next = tmp->next;
		FUNC1(tmp);
		return FUNC3(context);
	    }
	    FUNC5(tmp->realm, from, p - from);
	    tmp->realm[p - from] = '\0';
	    p--;
	}
    } else {
	FUNC2 (context);
	return KRB5KDC_ERR_POLICY;
    }

    return 0;
}