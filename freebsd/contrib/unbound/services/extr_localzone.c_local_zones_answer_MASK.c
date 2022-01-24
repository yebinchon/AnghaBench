#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct view {int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  isfirst; scalar_t__ local_zones; } ;
struct regional {int dummy; } ;
struct query_info {int /*<<< orphan*/  local_alias; int /*<<< orphan*/  qtype; int /*<<< orphan*/  qclass; int /*<<< orphan*/  qname_len; int /*<<< orphan*/  qname; } ;
struct module_env {TYPE_1__* cfg; } ;
struct local_zones {int /*<<< orphan*/  lock; } ;
struct local_zone {int type; int /*<<< orphan*/  lock; int /*<<< orphan*/  name; int /*<<< orphan*/  override_tree; int /*<<< orphan*/  taglen; int /*<<< orphan*/  taglist; } ;
struct local_data {int dummy; } ;
struct edns_data {int dummy; } ;
struct config_strlist {int dummy; } ;
struct comm_reply {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  enum localzone_type { ____Placeholder_localzone_type } localzone_type ;
struct TYPE_2__ {scalar_t__ log_local_actions; } ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (struct local_zone*,struct module_env*,struct query_info*,struct edns_data*,struct comm_reply*,int /*<<< orphan*/ *,struct regional*,int,struct local_data**,int,int,struct config_strlist**,size_t,char**,int) ; 
 int local_zone_always_nxdomain ; 
 int local_zone_always_refuse ; 
 int local_zone_always_transparent ; 
 scalar_t__ FUNC3 (struct local_zone*,struct query_info*,int) ; 
 int local_zone_inform ; 
 int local_zone_inform_deny ; 
 int local_zone_inform_redirect ; 
 int local_zone_noview ; 
 int local_zone_transparent ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int local_zone_typetransparent ; 
 struct local_zone* FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct local_zone* FUNC6 (struct local_zones*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct local_zone*,struct query_info*,struct comm_reply*) ; 
 int FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int,struct comm_reply*,int /*<<< orphan*/ ,int*,char**,int) ; 
 int FUNC11 (struct local_zone*,struct module_env*,struct query_info*,struct edns_data*,struct comm_reply*,int /*<<< orphan*/ *,struct regional*,struct local_data*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ verbosity ; 

int 
FUNC13(struct local_zones* zones, struct module_env* env,
	struct query_info* qinfo, struct edns_data* edns, sldns_buffer* buf,
	struct regional* temp, struct comm_reply* repinfo, uint8_t* taglist,
	size_t taglen, uint8_t* tagactions, size_t tagactionssize,
	struct config_strlist** tag_datas, size_t tag_datas_size,
	char** tagname, int num_tags, struct view* view)
{
	/* see if query is covered by a zone,
	 * 	if so:	- try to match (exact) local data 
	 * 		- look at zone type for negative response. */
	int labs = FUNC0(qinfo->qname);
	struct local_data* ld = NULL;
	struct local_zone* z = NULL;
	enum localzone_type lzt = local_zone_transparent;
	int r, tag = -1;

	if(view) {
		FUNC7(&view->lock);
		if(view->local_zones &&
			(z = FUNC5(view->local_zones,
			qinfo->qname, qinfo->qname_len, labs,
			qinfo->qclass, qinfo->qtype))) {
			FUNC7(&z->lock);
			lzt = z->type;
		}
		if(lzt == local_zone_noview) {
			FUNC8(&z->lock);
			z = NULL;
		}
		if(z && (lzt == local_zone_transparent ||
			lzt == local_zone_typetransparent ||
			lzt == local_zone_inform ||
			lzt == local_zone_always_transparent) &&
			FUNC3(z, qinfo, labs)) {
			FUNC8(&z->lock);
			z = NULL;
		}
		if(view->local_zones && !z && !view->isfirst){
			FUNC8(&view->lock);
			return 0;
		}
		if(z && verbosity >= VERB_ALGO) {
			char zname[255+1];
			FUNC1(z->name, zname);
			FUNC12(VERB_ALGO, "using localzone %s %s from view %s", 
				zname, FUNC4(lzt), view->name);
		}
		FUNC8(&view->lock);
	}
	if(!z) {
		/* try global local_zones tree */
		FUNC7(&zones->lock);
		if(!(z = FUNC6(zones, qinfo->qname,
			qinfo->qname_len, labs, qinfo->qclass, qinfo->qtype,
			taglist, taglen, 0))) {
			FUNC8(&zones->lock);
			return 0;
		}
		FUNC7(&z->lock);
		lzt = FUNC10(taglist, taglen, z->taglist, z->taglen,
			tagactions, tagactionssize, z->type, repinfo,
			z->override_tree, &tag, tagname, num_tags);
		FUNC8(&zones->lock);
		if(z && verbosity >= VERB_ALGO) {
			char zname[255+1];
			FUNC1(z->name, zname);
			FUNC12(VERB_ALGO, "using localzone %s %s", zname,
				FUNC4(lzt));
		}
	}
	if((env->cfg->log_local_actions ||
			lzt == local_zone_inform ||
			lzt == local_zone_inform_deny ||
			lzt == local_zone_inform_redirect)
			&& repinfo)
		FUNC9(z, qinfo, repinfo);

	if(lzt != local_zone_always_refuse
		&& lzt != local_zone_always_transparent
		&& lzt != local_zone_always_nxdomain
		&& FUNC2(z, env, qinfo, edns, repinfo, buf, temp, labs,
			&ld, lzt, tag, tag_datas, tag_datas_size, tagname, num_tags)) {
		FUNC8(&z->lock);
		/* We should tell the caller that encode is deferred if we found
		 * a local alias. */
		return !qinfo->local_alias;
	}
	r = FUNC11(z, env, qinfo, edns, repinfo, buf, temp, ld, lzt);
	FUNC8(&z->lock);
	return r && !qinfo->local_alias; /* see above */
}