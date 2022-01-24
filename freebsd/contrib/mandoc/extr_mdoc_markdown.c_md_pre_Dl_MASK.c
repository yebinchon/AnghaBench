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
struct roff_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_sp ; 
 int /*<<< orphan*/  code_blocks ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  outflags ; 
 scalar_t__ quote_blocks ; 

__attribute__((used)) static int
FUNC1(struct roff_node *n)
{
	/*
	 * Markdown code block syntax does not work inside blockquotes.
	 * The best we can do is fall back to another nested blockquote.
	 */
	if (quote_blocks) {
		FUNC0('>');
		quote_blocks++;
	} else {
		FUNC0('\t');
		code_blocks++;
	}
	outflags |= MD_sp;
	return 1;
}