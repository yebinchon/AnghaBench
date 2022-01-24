#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  prime_infos; int /*<<< orphan*/  _method_mod_q; int /*<<< orphan*/  _method_mod_p; int /*<<< orphan*/  _method_mod_n; } ;
struct TYPE_5__ {int /*<<< orphan*/  m; } ;
typedef  TYPE_1__ RSA_PRIME_INFO ;
typedef  TYPE_2__ RSA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(RSA *rsa)
{
    int i;
    RSA_PRIME_INFO *pinfo;

    FUNC0(rsa->_method_mod_n);
    FUNC0(rsa->_method_mod_p);
    FUNC0(rsa->_method_mod_q);
    for (i = 0; i < FUNC1(rsa->prime_infos); i++) {
        pinfo = FUNC2(rsa->prime_infos, i);
        FUNC0(pinfo->m);
    }
    return 1;
}