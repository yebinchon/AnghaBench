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
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static krb5_error_code
FUNC4(krb5_context context,
	      const char *orig_hostname,
	      char **new_hostname)
{
    *new_hostname = FUNC2 (orig_hostname);
    if (*new_hostname == NULL) {
	FUNC1(context, ENOMEM,
			       FUNC0("malloc: out of memory", ""));
	return ENOMEM;
    }
    FUNC3 (*new_hostname);
    return 0;
}