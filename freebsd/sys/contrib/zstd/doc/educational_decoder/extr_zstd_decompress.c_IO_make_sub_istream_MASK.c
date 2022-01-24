#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  istream_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ * const,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const,size_t) ; 

__attribute__((used)) static inline istream_t FUNC2(istream_t *const in, size_t len) {
    // Consume `len` bytes of the parent stream
    const u8 *const ptr = FUNC0(in, len);

    // Make a substream using the pointer to those `len` bytes
    return FUNC1(ptr, len);
}