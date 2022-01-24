#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  radix_strlen_t ;
struct TYPE_8__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ ldns_radix_t ;
struct TYPE_9__ {int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ ldns_radix_node_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

void* FUNC2(ldns_radix_t* tree, const uint8_t* key, radix_strlen_t len)
{
    ldns_radix_node_t* del = FUNC1(tree, key, len);
    void* data = NULL;
    if (del) {
        tree->count--;
        data = del->data;
        del->data = NULL;
        FUNC0(tree, del);
        return data;
    }
    return NULL;
}