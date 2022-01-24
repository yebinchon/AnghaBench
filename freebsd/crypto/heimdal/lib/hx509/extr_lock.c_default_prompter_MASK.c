#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* data; int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_1__ reply; int /*<<< orphan*/  prompt; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ hx509_prompt ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 size_t FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(void *data, const hx509_prompt *prompter)
{
    if (FUNC4(prompter->type)) {
	if(FUNC0(prompter->reply.data,
				  prompter->reply.length,
				  prompter->prompt,
				  0))
	    return 1;
    } else {
	char *s = prompter->reply.data;

	FUNC3 (prompter->prompt, stdout);
	FUNC1 (stdout);
	if(FUNC2(prompter->reply.data,
		 prompter->reply.length,
		 stdin) == NULL)
	    return 1;
	s[FUNC5(s, "\n")] = '\0';
    }
    return 0;
}