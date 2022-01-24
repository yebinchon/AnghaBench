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
struct blk_buf {int dummy; } ;
struct Strbuf {int dummy; } ;
typedef  int /*<<< orphan*/  Char ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (struct Strbuf*) ; 
 struct Strbuf Strbuf_init ; 
 int /*<<< orphan*/  FUNC1 (struct blk_buf*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct blk_buf *bb, struct Strbuf *word)
{
    Char *s;

    s = FUNC0(word);
    FUNC1(bb, s);
    *word = Strbuf_init;
}