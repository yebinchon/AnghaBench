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
struct rrset_parse {int /*<<< orphan*/  size; struct rr_parse* rrsig_last; struct rr_parse* rrsig_first; int /*<<< orphan*/  rrsig_count; int /*<<< orphan*/  rr_count; struct rr_parse* rr_last; struct rr_parse* rr_first; int /*<<< orphan*/  type; } ;
struct rr_parse {scalar_t__ size; struct rr_parse* next; int /*<<< orphan*/  ttl_data; scalar_t__ outside_packet; } ;
struct regional {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct regional*,int) ; 

__attribute__((used)) static int
FUNC2(sldns_buffer* pkt, struct regional* region, 
	struct rrset_parse* sigset, struct rrset_parse* dataset, int duplicate)
{
	struct rr_parse* sig = sigset->rr_first;
	struct rr_parse* prev = NULL;
	struct rr_parse* insert;
	struct rr_parse* nextsig;
	while(sig) {
		nextsig = sig->next;
		if(FUNC0(pkt, sig->ttl_data, 
			dataset->type)) {
			if(duplicate) {
				/* new */
				insert = (struct rr_parse*)FUNC1(
					region, sizeof(struct rr_parse));
				if(!insert) return 0;
				insert->outside_packet = 0;
				insert->ttl_data = sig->ttl_data;
				insert->size = sig->size;
				/* prev not used */
			} else {
				/* remove from sigset */
				if(prev) prev->next = sig->next;
				else	sigset->rr_first = sig->next;
				if(sigset->rr_last == sig)
					sigset->rr_last = prev;
				sigset->rr_count--;
				sigset->size -= sig->size;
				insert = sig;
				/* prev not changed */
			}
			/* add to dataset */
			dataset->rrsig_count++;
			insert->next = 0;
			if(dataset->rrsig_last) 
				dataset->rrsig_last->next = insert;
			else	dataset->rrsig_first = insert;
			dataset->rrsig_last = insert;
			dataset->size += insert->size;
		} else  {
			prev = sig;
		}
		sig = nextsig;
	}
	return 1;
}