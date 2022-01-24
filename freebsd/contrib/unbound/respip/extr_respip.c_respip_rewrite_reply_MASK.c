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
typedef  int /*<<< orphan*/  uint8_t ;
struct view {int /*<<< orphan*/  lock; int /*<<< orphan*/  isfirst; TYPE_1__* respip_set; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; } ;
struct respip_set {int /*<<< orphan*/  num_tags; int /*<<< orphan*/  tagname; int /*<<< orphan*/  ip_tree; } ;
struct respip_client_info {size_t taglen; size_t tag_actions_size; size_t tag_datas_size; struct respip_set* respip_set; struct view* view; struct config_strlist** tag_datas; int /*<<< orphan*/ * tag_actions; int /*<<< orphan*/ * taglist; } ;
struct respip_action_info {int dummy; } ;
struct resp_addr {int action; int /*<<< orphan*/  taglen; int /*<<< orphan*/  taglist; } ;
struct reply_info {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  qtype; } ;
struct config_strlist {int dummy; } ;
typedef  enum respip_action { ____Placeholder_respip_action } respip_action ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
struct TYPE_3__ {int /*<<< orphan*/  ip_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_TYPE_ANY ; 
 int /*<<< orphan*/  LDNS_RR_TYPE_CNAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const*,size_t,int,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct respip_action_info*,int,struct resp_addr const*,struct ub_packed_rrset_key*,int,struct respip_set*,int,struct regional*) ; 
 struct resp_addr* FUNC5 (struct reply_info const*,int /*<<< orphan*/ *,size_t*) ; 
 int respip_always_nxdomain ; 
 int respip_always_refuse ; 
 int respip_always_transparent ; 
 int FUNC6 (struct resp_addr const*,int,int /*<<< orphan*/ ,struct reply_info const*,size_t,struct reply_info**,int,struct config_strlist**,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ub_packed_rrset_key**,struct regional*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,struct reply_info const*,size_t,struct reply_info**,struct regional*) ; 
 int respip_none ; 

int
FUNC8(const struct query_info* qinfo,
	const struct respip_client_info* cinfo, const struct reply_info* rep,
	struct reply_info** new_repp, struct respip_action_info* actinfo,
	struct ub_packed_rrset_key** alias_rrset, int search_only,
	struct regional* region)
{
	const uint8_t* ctaglist;
	size_t ctaglen;
	const uint8_t* tag_actions;
	size_t tag_actions_size;
	struct config_strlist** tag_datas;
	size_t tag_datas_size;
	struct view* view = NULL;
	struct respip_set* ipset = NULL;
	size_t rrset_id = 0;
	enum respip_action action = respip_none;
	int tag = -1;
	const struct resp_addr* raddr = NULL;
	int ret = 1;
	struct ub_packed_rrset_key* redirect_rrset = NULL;

	if(!cinfo)
		goto done;
	ctaglist = cinfo->taglist;
	ctaglen = cinfo->taglen;
	tag_actions = cinfo->tag_actions;
	tag_actions_size = cinfo->tag_actions_size;
	tag_datas = cinfo->tag_datas;
	tag_datas_size = cinfo->tag_datas_size;
	view = cinfo->view;
	ipset = cinfo->respip_set;

	/** Try to use response-ip config from the view first; use
	  * global response-ip config if we don't have the view or we don't
	  * have the matching per-view config (and the view allows the use
	  * of global data in this case).
	  * Note that we lock the view even if we only use view members that
	  * currently don't change after creation.  This is for safety for
	  * future possible changes as the view documentation seems to expect
	  * any of its member can change in the view's lifetime.
	  * Note also that we assume 'view' is valid in this function, which
	  * should be safe (see unbound bug #1191) */
	if(view) {
		FUNC1(&view->lock);
		if(view->respip_set) {
			if((raddr = FUNC5(rep,
				&view->respip_set->ip_tree, &rrset_id))) {
				/** for per-view respip directives the action
				 * can only be direct (i.e. not tag-based) */
				action = raddr->action;
			}
		}
		if(!raddr && !view->isfirst)
			goto done;
	}
	if(!raddr && ipset && (raddr = FUNC5(rep, &ipset->ip_tree,
		&rrset_id))) {
		action = (enum respip_action)FUNC0(
			raddr->taglist, raddr->taglen, ctaglist, ctaglen,
			tag_actions, tag_actions_size,
			(enum localzone_type)raddr->action, &tag,
			ipset->tagname, ipset->num_tags);
	}
	if(raddr && !search_only) {
		int result = 0;

		/* first, see if we have response-ip or tag action for the
		 * action except for 'always' variants. */
		if(action != respip_always_refuse
			&& action != respip_always_transparent
			&& action != respip_always_nxdomain
			&& (result = FUNC6(raddr, action,
			qinfo->qtype, rep, rrset_id, new_repp, tag, tag_datas,
			tag_datas_size, ipset->tagname, ipset->num_tags,
			&redirect_rrset, region)) < 0) {
			ret = 0;
			goto done;
		}

		/* if no action data applied, take action specific to the
		 * action without data. */
		if(!result && !FUNC7(qinfo->qtype, action, rep,
			rrset_id, new_repp, region)) {
			ret = 0;
			goto done;
		}
	}
  done:
	if(view) {
		FUNC2(&view->lock);
	}
	if(ret) {
		/* If we're redirecting the original answer to a
		 * CNAME, record the CNAME rrset so the caller can take
		 * the appropriate action.  Note that we don't check the
		 * action type; it should normally be 'redirect', but it
		 * can be of other type when a data-dependent tag action
		 * uses redirect response-ip data.
		 */
		if(redirect_rrset &&
			redirect_rrset->rk.type == FUNC3(LDNS_RR_TYPE_CNAME) &&
			qinfo->qtype != LDNS_RR_TYPE_ANY)
			*alias_rrset = redirect_rrset;
		/* on success, populate respip result structure */
		ret = FUNC4(actinfo, action, raddr,
			redirect_rrset, tag, ipset, search_only, region);
	}
	return ret;
}