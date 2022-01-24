#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ data; } ;
typedef  TYPE_2__ pitem ;
typedef  int /*<<< orphan*/  hm_fragment ;
struct TYPE_9__ {TYPE_1__* d1; } ;
struct TYPE_7__ {int /*<<< orphan*/  sent_messages; } ;
typedef  TYPE_3__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(SSL *s)
{
    pitem *item = NULL;
    hm_fragment *frag = NULL;

    while ((item = FUNC2(s->d1->sent_messages)) != NULL) {
        frag = (hm_fragment *)item->data;
        FUNC0(frag);
        FUNC1(item);
    }
}