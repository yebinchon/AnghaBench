#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ntlm_cred ;
struct TYPE_8__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
struct TYPE_9__ {TYPE_1__ key; struct TYPE_9__* username; struct TYPE_9__* domain; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC5(ntlm_cred from, ntlm_cred *to)
{
    *to = FUNC0(1, sizeof(**to));
    if (*to == NULL)
	return ENOMEM;
    (*to)->username = FUNC4(from->username);
    if ((*to)->username == NULL) {
	FUNC1(*to);
	return ENOMEM;
    }
    (*to)->domain = FUNC4(from->domain);
    if ((*to)->domain == NULL) {
	FUNC1((*to)->username);
	FUNC1(*to);
	return ENOMEM;
    }
    (*to)->key.data = FUNC2(from->key.length);
    if ((*to)->key.data == NULL) {
	FUNC1((*to)->domain);
	FUNC1((*to)->username);
	FUNC1(*to);
	return ENOMEM;
    }
    FUNC3((*to)->key.data, from->key.data, from->key.length);
    (*to)->key.length = from->key.length;

    return 0;
}