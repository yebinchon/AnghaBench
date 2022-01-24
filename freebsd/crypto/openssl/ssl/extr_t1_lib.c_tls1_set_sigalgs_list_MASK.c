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
struct TYPE_3__ {scalar_t__ sigalgcnt; int /*<<< orphan*/  sigalgs; } ;
typedef  TYPE_1__ sig_cb_st ;
typedef  int /*<<< orphan*/  CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  sig_cb ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC2(CERT *c, const char *str, int client)
{
    sig_cb_st sig;
    sig.sigalgcnt = 0;
    if (!FUNC0(str, ':', 1, sig_cb, &sig))
        return 0;
    if (c == NULL)
        return 1;
    return FUNC1(c, sig.sigalgs, sig.sigalgcnt, client);
}