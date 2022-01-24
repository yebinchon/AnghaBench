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
typedef  scalar_t__ uChar ;
struct hashValue {int /*<<< orphan*/  c; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  scalar_t__ Char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct hashValue *h, Char ch)
{
    /* The compiler (gcc -O2) seems to do a good job optimizing this without
     * explicitly extracting into local variables. */
    h->a += (uChar)ch;
    FUNC0(h->a, h->b, h->c);
}