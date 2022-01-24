#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ntlm_buf {int dummy; } ;
typedef  TYPE_1__* ntlm_name ;
struct TYPE_3__ {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,char**,struct ntlm_buf*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 

__attribute__((used)) static int
FUNC3(const ntlm_name target_name,
	      char **username, struct ntlm_buf *key)
{
    const char *fn;

    if (FUNC2())
	return ENOENT;

    fn = FUNC1("NTLM_USER_FILE");
    if (fn == NULL)
	return ENOENT;
    if (FUNC0(fn, target_name->domain, username, key) == 0)
	return 0;

    return ENOENT;
}