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
struct TYPE_3__ {scalar_t__ type; scalar_t__ pkey_type; } ;
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 int OBJ_NAME_ALIAS ; 
 int OBJ_NAME_TYPE_MD_METH ; 
 int FUNC0 (char const*,int,char const*) ; 
 char const* FUNC1 (scalar_t__) ; 
 char const* FUNC2 (scalar_t__) ; 

int FUNC3(const EVP_MD *md)
{
    int r;
    const char *name;

    name = FUNC2(md->type);
    r = FUNC0(name, OBJ_NAME_TYPE_MD_METH, (const char *)md);
    if (r == 0)
        return 0;
    r = FUNC0(FUNC1(md->type), OBJ_NAME_TYPE_MD_METH,
                     (const char *)md);
    if (r == 0)
        return 0;

    if (md->pkey_type && md->type != md->pkey_type) {
        r = FUNC0(FUNC2(md->pkey_type),
                         OBJ_NAME_TYPE_MD_METH | OBJ_NAME_ALIAS, name);
        if (r == 0)
            return 0;
        r = FUNC0(FUNC1(md->pkey_type),
                         OBJ_NAME_TYPE_MD_METH | OBJ_NAME_ALIAS, name);
    }
    return r;
}