#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* hx509_crypto ;
struct TYPE_6__ {TYPE_2__* data; } ;
struct TYPE_7__ {int /*<<< orphan*/  oid; struct TYPE_7__* param; TYPE_1__ key; struct TYPE_7__* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(hx509_crypto crypto)
{
    if (crypto->name)
	FUNC1(crypto->name);
    if (crypto->key.data)
	FUNC1(crypto->key.data);
    if (crypto->param)
	FUNC1(crypto->param);
    FUNC0(&crypto->oid);
    FUNC2(crypto, 0, sizeof(*crypto));
    FUNC1(crypto);
}