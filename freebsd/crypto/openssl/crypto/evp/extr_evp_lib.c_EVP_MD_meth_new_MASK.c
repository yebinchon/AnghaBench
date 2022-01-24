#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int type; int pkey_type; } ;
typedef  TYPE_1__ EVP_MD ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int) ; 

EVP_MD *FUNC1(int md_type, int pkey_type)
{
    EVP_MD *md = FUNC0(sizeof(*md));

    if (md != NULL) {
        md->type = md_type;
        md->pkey_type = pkey_type;
    }
    return md;
}