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
struct event {int dummy; } ;
struct TYPE_3__ {struct event** p; scalar_t__ n; } ;
typedef  TYPE_1__ min_heap_t ;

/* Variables and functions */

struct event* FUNC0(min_heap_t* s) { return s->n ? *s->p : 0; }