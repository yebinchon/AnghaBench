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
struct TYPE_2__ {int /*<<< orphan*/ * _hidden; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  afalg_cipher_nids ; 
 TYPE_1__* cbc_handle ; 

__attribute__((used)) static int FUNC2(void)
{
    short unsigned int i;
    for(i = 0; i < FUNC1(afalg_cipher_nids); i++) {
        FUNC0(cbc_handle[i]._hidden);
        cbc_handle[i]._hidden = NULL;
    }
    return 1;
}