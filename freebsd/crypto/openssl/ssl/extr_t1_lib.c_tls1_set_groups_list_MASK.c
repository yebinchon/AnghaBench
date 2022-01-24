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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {scalar_t__ nidcnt; int /*<<< orphan*/  nid_arr; } ;
typedef  TYPE_1__ nid_cb_st ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  nid_cb ; 
 int FUNC1 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC2(uint16_t **pext, size_t *pextlen, const char *str)
{
    nid_cb_st ncb;
    ncb.nidcnt = 0;
    if (!FUNC0(str, ':', 1, nid_cb, &ncb))
        return 0;
    if (pext == NULL)
        return 1;
    return FUNC1(pext, pextlen, ncb.nid_arr, ncb.nidcnt);
}