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
struct TYPE_4__ {int /*<<< orphan*/  num_bits; int /*<<< orphan*/  symbols; } ;
typedef  TYPE_1__ HUF_dtable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(HUF_dtable *const dtable) {
    FUNC0(dtable->symbols);
    FUNC0(dtable->num_bits);
    FUNC1(dtable, 0, sizeof(HUF_dtable));
}