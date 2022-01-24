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
struct eap_teap_pac {struct eap_teap_pac* next; int /*<<< orphan*/  a_id_info_len; int /*<<< orphan*/  a_id_info; int /*<<< orphan*/  i_id_len; int /*<<< orphan*/  i_id; int /*<<< orphan*/  a_id_len; int /*<<< orphan*/  a_id; int /*<<< orphan*/  pac_info_len; int /*<<< orphan*/  pac_info; int /*<<< orphan*/  pac_opaque_len; int /*<<< orphan*/  pac_opaque; int /*<<< orphan*/  pac_key; int /*<<< orphan*/  pac_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  EAP_TEAP_PAC_KEY_LEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct eap_teap_pac*) ; 
 int /*<<< orphan*/  FUNC2 (struct eap_teap_pac**,struct eap_teap_pac**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct eap_teap_pac* FUNC4 (int) ; 

int FUNC5(struct eap_teap_pac **pac_root,
		     struct eap_teap_pac **pac_current,
		     struct eap_teap_pac *entry)
{
	struct eap_teap_pac *pac;

	if (!entry || !entry->a_id)
		return -1;

	/* Remove a possible old entry for the matching A-ID. */
	FUNC2(pac_root, pac_current,
			    entry->a_id, entry->a_id_len, entry->pac_type);

	/* Allocate a new entry and add it to the list of PACs. */
	pac = FUNC4(sizeof(*pac));
	if (!pac)
		return -1;

	pac->pac_type = entry->pac_type;
	FUNC3(pac->pac_key, entry->pac_key, EAP_TEAP_PAC_KEY_LEN);
	if (FUNC0(&pac->pac_opaque, &pac->pac_opaque_len,
			      entry->pac_opaque, entry->pac_opaque_len) < 0 ||
	    FUNC0(&pac->pac_info, &pac->pac_info_len,
			      entry->pac_info, entry->pac_info_len) < 0 ||
	    FUNC0(&pac->a_id, &pac->a_id_len,
			      entry->a_id, entry->a_id_len) < 0 ||
	    FUNC0(&pac->i_id, &pac->i_id_len,
			      entry->i_id, entry->i_id_len) < 0 ||
	    FUNC0(&pac->a_id_info, &pac->a_id_info_len,
			      entry->a_id_info, entry->a_id_info_len) < 0) {
		FUNC1(pac);
		return -1;
	}

	pac->next = *pac_root;
	*pac_root = pac;

	return 0;
}