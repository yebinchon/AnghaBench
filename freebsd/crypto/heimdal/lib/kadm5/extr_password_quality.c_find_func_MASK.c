#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kadm5_pw_policy_check_func {char* name; } ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_4__ {struct kadm5_pw_policy_check_func* funcs; } ;
struct TYPE_3__ {char* name; struct kadm5_pw_policy_check_func* funcs; } ;

/* Variables and functions */
 TYPE_2__ builtin_verifier ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (size_t) ; 
 int num_verifiers ; 
 char* FUNC2 (char const*,char) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 TYPE_1__** verifiers ; 

__attribute__((used)) static const struct kadm5_pw_policy_check_func *
FUNC5(krb5_context context, const char *name)
{
    const struct kadm5_pw_policy_check_func *f;
    char *module = NULL;
    const char *p, *func;
    int i;

    p = FUNC2(name, ':');
    if (p) {
	size_t len = p - name + 1;
	func = p + 1;
	module = FUNC1(len);
	if (module == NULL)
	    return NULL;
	FUNC4(module, name, len);
    } else
	func = name;

    /* Find module in loaded modules first */
    for (i = 0; i < num_verifiers; i++) {
	if (module && FUNC3(module, verifiers[i]->name) != 0)
	    continue;
	for (f = verifiers[i]->funcs; f->name ; f++)
	    if (FUNC3(func, f->name) == 0) {
		if (module)
		    FUNC0(module);
		return f;
	    }
    }
    /* Lets try try the builtin modules */
    if (module == NULL || FUNC3(module, "builtin") == 0) {
	for (f = builtin_verifier.funcs; f->name ; f++)
	    if (FUNC3(func, f->name) == 0) {
		if (module)
		    FUNC0(module);
		return f;
	    }
    }
    if (module)
	FUNC0(module);
    return NULL;
}