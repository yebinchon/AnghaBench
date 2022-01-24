#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  k; } ;
struct slist {TYPE_4__ s; } ;
struct TYPE_11__ {scalar_t__ k; } ;
struct block {TYPE_3__ s; struct slist* stmts; } ;
struct TYPE_10__ {int /*<<< orphan*/  reg; } ;
struct TYPE_9__ {int /*<<< orphan*/  reg; } ;
struct TYPE_13__ {TYPE_2__ off_linkpl; TYPE_1__ off_linkhdr; } ;
typedef  TYPE_5__ compiler_state_t ;

/* Variables and functions */
 int BPF_JEQ ; 
 int BPF_JMP ; 
 int BPF_LD ; 
 int BPF_LDX ; 
 int BPF_MEM ; 
 int BPF_X ; 
 int /*<<< orphan*/  FUNC0 (struct block*) ; 
 struct block* FUNC1 (TYPE_5__*,int) ; 
 struct slist* FUNC2 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct slist*,struct slist*) ; 

__attribute__((used)) static struct block *
FUNC4(compiler_state_t *cstate)
{
	struct block *b0;
	struct slist *s, *s1;

	/* The easiest way to see if there is a link layer present
	 * is to check if the link layer header and payload are not
	 * the same. */

	/* Geneve always generates pure variable offsets so we can
	 * compare only the registers. */
	s = FUNC2(cstate, BPF_LD|BPF_MEM);
	s->s.k = cstate->off_linkhdr.reg;

	s1 = FUNC2(cstate, BPF_LDX|BPF_MEM);
	s1->s.k = cstate->off_linkpl.reg;
	FUNC3(s, s1);

	b0 = FUNC1(cstate, BPF_JMP|BPF_JEQ|BPF_X);
	b0->stmts = s;
	b0->s.k = 0;
	FUNC0(b0);

	return b0;
}