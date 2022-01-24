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
typedef  int /*<<< orphan*/  uint8_t ;
struct name_tree_node {int dummy; } ;
struct iter_priv {int /*<<< orphan*/  n; int /*<<< orphan*/  region; } ;
struct config_strlist {int /*<<< orphan*/  str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* private_domain; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDNS_RR_CLASS_IN ; 
 int /*<<< orphan*/  VERB_QUERY ; 
 int FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct name_tree_node*,int /*<<< orphan*/ *,size_t,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct iter_priv* priv, struct config_file* cfg)
{
	/* parse names, report errors, insert into tree */
	struct config_strlist* p;
	struct name_tree_node* n;
	uint8_t* nm, *nmr;
	size_t nm_len;
	int nm_labs;

	for(p = cfg->private_domain; p; p = p->next) {
		FUNC2(p->str);
		nm = FUNC7(p->str, &nm_len);
		if(!nm) {
			FUNC3("cannot parse private-domain: %s", p->str);
			return 0;
		}
		nm_labs = FUNC0(nm, &nm_len);
		nmr = (uint8_t*)FUNC6(priv->region, nm, nm_len);
		FUNC1(nm);
		if(!nmr) {
			FUNC3("out of memory");
			return 0;
		}
		n = (struct name_tree_node*)FUNC5(priv->region,
			sizeof(*n));
		if(!n) {
			FUNC3("out of memory");
			return 0;
		}
		if(!FUNC4(&priv->n, n, nmr, nm_len, nm_labs,
			LDNS_RR_CLASS_IN)) {
			FUNC8(VERB_QUERY, "ignoring duplicate "
				"private-domain: %s", p->str);
		}
	}
	return 1;
}