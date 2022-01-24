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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_6__ {struct TYPE_6__* b64_bn; int /*<<< orphan*/  bn; } ;
typedef  TYPE_1__ SRP_gN_cache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int MAX_LEN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (int) ; 
 TYPE_1__* FUNC3 (char const*) ; 
 int FUNC4 (unsigned char*,int,char const*) ; 

__attribute__((used)) static SRP_gN_cache *FUNC5(const char *ch)
{
    unsigned char tmp[MAX_LEN];
    int len;
    SRP_gN_cache *newgN = FUNC2(sizeof(*newgN));

    if (newgN == NULL)
        return NULL;

    len = FUNC4(tmp, sizeof(tmp), ch);
    if (len < 0)
        goto err;

    if ((newgN->b64_bn = FUNC3(ch)) == NULL)
        goto err;

    if ((newgN->bn = FUNC0(tmp, len, NULL)))
        return newgN;

    FUNC1(newgN->b64_bn);
 err:
    FUNC1(newgN);
    return NULL;
}