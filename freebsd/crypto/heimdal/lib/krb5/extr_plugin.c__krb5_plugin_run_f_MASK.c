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
struct iter_ctx {char const* name; int min_version; int /*<<< orphan*/  ret; int /*<<< orphan*/ * n; int /*<<< orphan*/ * result; void* userctx; int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,void const*,void*,void*) ;int /*<<< orphan*/  context; } ;
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/ * heim_string_t ;
typedef  int /*<<< orphan*/ * heim_dict_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KRB5_PLUGIN_NO_HANDLE ; 
 int /*<<< orphan*/  eval_results ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct iter_ctx*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct iter_ctx*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (char const*) ; 
 int /*<<< orphan*/  modules ; 
 int /*<<< orphan*/  plugin_mutex ; 
 int /*<<< orphan*/  search_modules ; 

krb5_error_code
FUNC8(krb5_context context,
		   const char *module,
		   const char *name,
		   int min_version,
		   int flags,
		   void *userctx,
		   krb5_error_code (*func)(krb5_context, const void *, void *, void *))
{
    heim_string_t m = FUNC7(module);
    heim_dict_t dict;
    struct iter_ctx s;

    FUNC0(&plugin_mutex);

    dict = FUNC4(modules, m);
    FUNC6(m);
    if (dict == NULL) {
	FUNC1(&plugin_mutex);
	return KRB5_PLUGIN_NO_HANDLE;
    }

    s.context = context;
    s.name = name;
    s.n = FUNC7(name);
    s.min_version = min_version;
    s.result = FUNC2();
    s.func = func;
    s.userctx = userctx;

    FUNC5(dict, search_modules, &s);

    FUNC6(dict);

    FUNC1(&plugin_mutex);

    s.ret = KRB5_PLUGIN_NO_HANDLE;

    FUNC3(s.result, eval_results, &s);

    FUNC6(s.result);
    FUNC6(s.n);

    return s.ret;
}