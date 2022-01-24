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
struct TYPE_2__ {size_t nidcnt; int* nid_arr; } ;
typedef  TYPE_1__ nid_cb_st ;
typedef  int /*<<< orphan*/  etmp ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 size_t MAX_CURVELIST ; 
 int NID_undef ; 
 int FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC4(const char *elem, int len, void *arg)
{
    nid_cb_st *narg = arg;
    size_t i;
    int nid;
    char etmp[20];
    if (elem == NULL)
        return 0;
    if (narg->nidcnt == MAX_CURVELIST)
        return 0;
    if (len > (int)(sizeof(etmp) - 1))
        return 0;
    FUNC3(etmp, elem, len);
    etmp[len] = 0;
    nid = FUNC0(etmp);
    if (nid == NID_undef)
        nid = FUNC2(etmp);
    if (nid == NID_undef)
        nid = FUNC1(etmp);
    if (nid == NID_undef)
        return 0;
    for (i = 0; i < narg->nidcnt; i++)
        if (narg->nid_arr[i] == nid)
            return 0;
    narg->nid_arr[narg->nidcnt++] = nid;
    return 1;
}