#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* kadm5_principal_ent_t ;
struct TYPE_6__ {int /*<<< orphan*/  attributes; int /*<<< orphan*/  pw_expiration; int /*<<< orphan*/  princ_expire_time; int /*<<< orphan*/  max_renewable_life; int /*<<< orphan*/  max_life; } ;

/* Variables and functions */
 int /*<<< orphan*/  KADM5_ATTRIBUTES ; 
 int /*<<< orphan*/  KADM5_MAX_LIFE ; 
 int /*<<< orphan*/  KADM5_MAX_RLIFE ; 
 int /*<<< orphan*/  KADM5_PRINC_EXPIRE_TIME ; 
 int /*<<< orphan*/  KADM5_PW_EXPIRATION ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,TYPE_1__*,int) ; 

int
FUNC4(kadm5_principal_ent_t ent, int *mask,
	   kadm5_principal_ent_t default_ent, int default_mask)
{

    FUNC3(ent, mask, default_ent, default_mask);

    if(FUNC1 ("Max ticket life", &ent->max_life, mask,
		    KADM5_MAX_LIFE) != 0)
	return 1;

    if(FUNC1 ("Max renewable life", &ent->max_renewable_life, mask,
		    KADM5_MAX_RLIFE) != 0)
	return 1;

    if(FUNC2 ("Principal expiration time", &ent->princ_expire_time, mask,
		   KADM5_PRINC_EXPIRE_TIME) != 0)
	return 1;

    if(FUNC2 ("Password expiration time", &ent->pw_expiration, mask,
		   KADM5_PW_EXPIRATION) != 0)
	return 1;

    if(FUNC0 ("Attributes", &ent->attributes, mask,
			KADM5_ATTRIBUTES) != 0)
	return 1;

    return 0;
}