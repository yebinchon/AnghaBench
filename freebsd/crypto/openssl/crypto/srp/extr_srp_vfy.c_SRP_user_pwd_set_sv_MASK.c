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
typedef  int /*<<< orphan*/  tmp ;
struct TYPE_3__ {int /*<<< orphan*/ * v; int /*<<< orphan*/ * s; } ;
typedef  TYPE_1__ SRP_user_pwd ;

/* Variables and functions */
 void* FUNC0 (unsigned char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int MAX_LEN ; 
 int FUNC2 (unsigned char*,int,char const*) ; 

__attribute__((used)) static int FUNC3(SRP_user_pwd *vinfo, const char *s,
                               const char *v)
{
    unsigned char tmp[MAX_LEN];
    int len;

    vinfo->v = NULL;
    vinfo->s = NULL;

    len = FUNC2(tmp, sizeof(tmp), v);
    if (len < 0)
        return 0;
    if (NULL == (vinfo->v = FUNC0(tmp, len, NULL)))
        return 0;
    len = FUNC2(tmp, sizeof(tmp), s);
    if (len < 0)
        goto err;
    vinfo->s = FUNC0(tmp, len, NULL);
    if (vinfo->s == NULL)
        goto err;
    return 1;
 err:
    FUNC1(vinfo->v);
    vinfo->v = NULL;
    return 0;
}