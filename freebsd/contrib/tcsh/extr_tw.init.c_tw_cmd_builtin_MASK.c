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
struct biltins {scalar_t__ bname; } ;

/* Variables and functions */
 struct biltins const* bfunc ; 
 size_t nbfunc ; 
 struct biltins const* nt_bfunc ; 
 size_t nt_nbfunc ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(void)
{
    const struct biltins *bptr;

    for (bptr = bfunc; bptr < &bfunc[nbfunc]; bptr++)
	if (bptr->bname)
	    FUNC1(FUNC0(bptr->bname));
#ifdef WINNT_NATIVE
    for (bptr = nt_bfunc; bptr < &nt_bfunc[nt_nbfunc]; bptr++)
	if (bptr->bname)
	    tw_cmd_add(str2short(bptr->bname));
#endif /* WINNT_NATIVE*/
}