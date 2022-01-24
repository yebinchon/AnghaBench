#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  const* data; } ;
typedef  TYPE_1__ method_state_t ;
typedef  int /*<<< orphan*/  data_t ;
struct TYPE_5__ {TYPE_1__ base; void* decompressed; void* compressed; int /*<<< orphan*/  inputs; int /*<<< orphan*/  dictionary; } ;
typedef  TYPE_2__ buffer_state_t ;

/* Variables and functions */
 size_t const FUNC0 (size_t const) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 void* FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static method_state_t* FUNC6(data_t const* data) {
    buffer_state_t* state = (buffer_state_t*)FUNC2(1, sizeof(buffer_state_t));
    if (state == NULL)
        return NULL;
    state->base.data = data;
    state->inputs = FUNC5(data);
    state->dictionary = FUNC4(data);
    size_t const max_size = FUNC1(state->inputs);
    state->compressed = FUNC3(FUNC0(max_size));
    state->decompressed = FUNC3(max_size);
    return &state->base;
}