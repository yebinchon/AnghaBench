#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct thread_local_inits_st {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 struct thread_local_inits_st* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct thread_local_inits_st*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread_local_inits_st*) ; 
 struct thread_local_inits_st* FUNC3 (int) ; 
 TYPE_1__ destructor_key ; 

__attribute__((used)) static struct thread_local_inits_st *FUNC4(int alloc)
{
    struct thread_local_inits_st *local =
        FUNC0(&destructor_key.value);

    if (alloc) {
        if (local == NULL
            && (local = FUNC3(sizeof(*local))) != NULL
            && !FUNC1(&destructor_key.value, local)) {
            FUNC2(local);
            return NULL;
        }
    } else {
        FUNC1(&destructor_key.value, NULL);
    }

    return local;
}