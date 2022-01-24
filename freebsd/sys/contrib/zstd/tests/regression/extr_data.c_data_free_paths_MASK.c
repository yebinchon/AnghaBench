#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * path; } ;
struct TYPE_5__ {int /*<<< orphan*/ * path; } ;
struct TYPE_7__ {TYPE_2__ dict; TYPE_1__ data; } ;
typedef  TYPE_3__ data_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

__attribute__((used)) static void FUNC2(data_t* const* data) {
    FUNC0(data != NULL);
    for (; *data != NULL; ++data) {
        data_t* datum = *data;
        FUNC1((void*)datum->data.path);
        FUNC1((void*)datum->dict.path);
        datum->data.path = NULL;
        datum->dict.path = NULL;
    }
}