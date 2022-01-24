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
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ADMIN_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,unsigned int,char**) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC7 (char const*,char***) ; 

__attribute__((used)) static void
FUNC8 (const char *filename, unsigned n)
{
    krb5_error_code ret;
    int i;
    void *kadm_handle;
    krb5_context context;
    unsigned nwords;
    char **words;

    ret = FUNC6(&context);
    if (ret)
	FUNC1 (1, "krb5_init_context failed: %d", ret);
    ret = FUNC3(context,
					 KADM5_ADMIN_SERVICE,
					 NULL,
					 KADM5_ADMIN_SERVICE,
					 NULL, 0, 0,
					 &kadm_handle);
    if(ret)
	FUNC4(context, 1, ret, "kadm5_init_with_password");

    nwords = FUNC7 (filename, &words);

    for (i = 0; i < n; ++i)
	FUNC0 (context, kadm_handle, nwords, words);
    FUNC2(kadm_handle);
    FUNC5(context);
}