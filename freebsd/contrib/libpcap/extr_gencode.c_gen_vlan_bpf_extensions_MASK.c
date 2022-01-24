#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ k; } ;
struct slist {TYPE_1__ s; } ;
struct TYPE_4__ {int k; } ;
struct block {TYPE_2__ s; struct slist* stmts; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int BPF_ABS ; 
 int BPF_B ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 int BPF_LD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SKF_AD_OFF ; 
 scalar_t__ SKF_AD_VLAN_TAG_PRESENT ; 
 int /*<<< orphan*/  FUNC1 (struct block*,struct block*) ; 
 int /*<<< orphan*/  FUNC2 (struct block*,struct block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct block*) ; 
 struct block* FUNC5 (int /*<<< orphan*/ *) ; 
 struct block* FUNC6 (int /*<<< orphan*/ *,int) ; 
 struct block* FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct slist* FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct block *
FUNC9(compiler_state_t *cstate, int vlan_num)
{
        struct block *b0, *b_tpid, *b_vid = NULL;
        struct slist *s;

        /* generate new filter code based on extracting packet
         * metadata */
        s = FUNC8(cstate, BPF_LD|BPF_B|BPF_ABS);
        s->s.k = SKF_AD_OFF + SKF_AD_VLAN_TAG_PRESENT;

        b0 = FUNC7(cstate, FUNC0(BPF_JEQ));
        b0->stmts = s;
        b0->s.k = 1;

	/*
	 * This is tricky. We need to insert the statements updating variable
	 * parts of offsets before the the traditional TPID and VID tests so
	 * that they are called whenever SKF_AD_VLAN_TAG_PRESENT fails but
	 * we do not want this update to affect those checks. That's why we
	 * generate both test blocks first and insert the statements updating
	 * variable parts of both offsets after that. This wouldn't work if
	 * there already were variable length link header when entering this
	 * function but gen_vlan_bpf_extensions() isn't called in that case.
	 */
	b_tpid = FUNC5(cstate);
	if (vlan_num >= 0)
		b_vid = FUNC6(cstate, vlan_num);

	FUNC3(cstate, b_tpid);
	FUNC2(b0, b_tpid);
	b0 = b_tpid;

	if (vlan_num >= 0) {
		FUNC4(cstate, b_vid);
		FUNC1(b0, b_vid);
		b0 = b_vid;
	}

        return b0;
}