#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ len; } ;
typedef  TYPE_2__ ostream_t ;
typedef  int /*<<< orphan*/  istream_t ;
struct TYPE_9__ {scalar_t__ frame_content_size; } ;
struct TYPE_11__ {TYPE_1__ header; } ;
typedef  TYPE_3__ frame_context_t ;
typedef  int /*<<< orphan*/  dictionary_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__* const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const) ; 

__attribute__((used)) static void FUNC4(ostream_t *const out, istream_t *const in,
                              const dictionary_t *const dict) {
    frame_context_t ctx;

    // Initialize the context that needs to be carried from block to block
    FUNC3(&ctx, in, dict);

    if (ctx.header.frame_content_size != 0 &&
        ctx.header.frame_content_size > out->len) {
        FUNC0();
    }

    FUNC1(&ctx, out, in);

    FUNC2(&ctx);
}