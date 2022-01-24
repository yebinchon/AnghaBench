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
struct TYPE_5__ {scalar_t__ method_data; } ;
typedef  TYPE_1__ X509_LOOKUP ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer; int /*<<< orphan*/  dirs; } ;
typedef  TYPE_2__ BY_DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  by_dir_entry_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(X509_LOOKUP *lu)
{
    BY_DIR *a = (BY_DIR *)lu->method_data;

    FUNC3(a->dirs, by_dir_entry_free);
    FUNC0(a->buffer);
    FUNC1(a->lock);
    FUNC2(a);
}