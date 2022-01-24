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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * ptr; } ;
typedef  TYPE_1__ ostream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

__attribute__((used)) static inline void FUNC1(ostream_t *const out, u8 symb) {
    if (out->len == 0) {
        FUNC0();
    }

    out->ptr[0] = symb;
    out->ptr++;
    out->len--;
}