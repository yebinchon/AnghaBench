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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct compress_tree_node {int labs; int /*<<< orphan*/  offset; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(sldns_buffer* pkt, uint8_t* dname, int labs,
	struct compress_tree_node* p)
{
	/* compress it */
	int labcopy = labs - p->labs;
	uint8_t lablen;
	uint16_t ptr;

	if(labs == 1) {
		/* write root label */
		if(FUNC1(pkt) < 1)
			return 0;
		FUNC4(pkt, 0);
		return 1;
	}

	/* copy the first couple of labels */
	while(labcopy--) {
		lablen = *dname++;
		if(FUNC1(pkt) < (size_t)lablen+1)
			return 0;
		FUNC4(pkt, lablen);
		FUNC2(pkt, dname, lablen);
		dname += lablen;
	}
	/* insert compression ptr */
	if(FUNC1(pkt) < 2)
		return 0;
	ptr = FUNC0(p->offset);
	FUNC3(pkt, ptr);
	return 1;
}