#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nlist {char* n_name; int /*<<< orphan*/  n_value; scalar_t__ n_desc; scalar_t__ n_other; int /*<<< orphan*/  n_type; } ;
struct kvm_nlist {char* n_name; int /*<<< orphan*/  n_value; int /*<<< orphan*/  n_type; } ;
struct TYPE_6__ {int /*<<< orphan*/  program; } ;
typedef  TYPE_1__ kvm_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 struct kvm_nlist* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,struct kvm_nlist*) ; 

int
FUNC4(kvm_t *kd, struct nlist *nl)
{
	struct kvm_nlist *kl;
	int count, i, nfail;

	/*
	 * Avoid reporting truncated addresses by failing for non-native
	 * cores.
	 */
	if (!FUNC2(kd)) {
		FUNC0(kd, kd->program, "kvm_nlist of non-native vmcore");
		return (-1);
	}

	for (count = 0; nl[count].n_name != NULL && nl[count].n_name[0] != '\0';
	     count++)
		;
	if (count == 0)
		return (0);
	kl = FUNC1(count + 1, sizeof(*kl));
	for (i = 0; i < count; i++)
		kl[i].n_name = nl[i].n_name;
	nfail = FUNC3(kd, kl);
	for (i = 0; i < count; i++) {
		nl[i].n_type = kl[i].n_type;
		nl[i].n_other = 0;
		nl[i].n_desc = 0;
		nl[i].n_value = kl[i].n_value;
	}
	return (nfail);
}