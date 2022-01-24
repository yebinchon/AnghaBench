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
struct val_anchors {int /*<<< orphan*/  lock; struct trust_anchor* dlv_anchor; } ;
struct trust_anchor {int dummy; } ;
struct config_strlist {scalar_t__* str; struct config_strlist* next; } ;
struct config_file {scalar_t__* dlv_anchor_file; scalar_t__* chrootdir; struct config_strlist* auto_trust_anchor_file_list; struct config_strlist* dlv_anchor_list; struct config_strlist* trust_anchor_list; struct config_strlist* trusted_keys_file_list; struct config_strlist* trust_anchor_file_list; struct config_strlist* domain_insecure; scalar_t__ insecure_lan_zones; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct val_anchors*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct val_anchors*,int /*<<< orphan*/ *,char*) ; 
 struct trust_anchor* FUNC2 (struct val_anchors*,int /*<<< orphan*/ *,char*,int) ; 
 struct trust_anchor* FUNC3 (struct val_anchors*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (struct val_anchors*) ; 
 char** as112_zones ; 
 int /*<<< orphan*/  FUNC5 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC6 (struct val_anchors*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct val_anchors*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*) ; 
 scalar_t__ FUNC14 (char*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ verbosity ; 

int 
FUNC15(struct val_anchors* anchors, struct config_file* cfg)
{
	struct config_strlist* f;
	const char** zstr;
	char* nm;
	sldns_buffer* parsebuf = FUNC12(65535);
	if(cfg->insecure_lan_zones) {
		for(zstr = as112_zones; *zstr; zstr++) {
			if(!FUNC0(anchors, *zstr)) {
				FUNC10("error in insecure-lan-zones: %s", *zstr);
				FUNC11(parsebuf);
				return 0;
			}
		}
	}
	for(f = cfg->domain_insecure; f; f = f->next) {
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		if(!FUNC0(anchors, f->str)) {
			FUNC10("error in domain-insecure: %s", f->str);
			FUNC11(parsebuf);
			return 0;
		}
	}
	for(f = cfg->trust_anchor_file_list; f; f = f->next) {
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		nm = f->str;
		if(cfg->chrootdir && cfg->chrootdir[0] && FUNC14(nm,
			cfg->chrootdir, FUNC13(cfg->chrootdir)) == 0)
			nm += FUNC13(cfg->chrootdir);
		if(!FUNC2(anchors, parsebuf, nm, 0)) {
			FUNC10("error reading trust-anchor-file: %s", f->str);
			FUNC11(parsebuf);
			return 0;
		}
	}
	for(f = cfg->trusted_keys_file_list; f; f = f->next) {
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		nm = f->str;
		if(cfg->chrootdir && cfg->chrootdir[0] && FUNC14(nm,
			cfg->chrootdir, FUNC13(cfg->chrootdir)) == 0)
			nm += FUNC13(cfg->chrootdir);
		if(!FUNC1(anchors, parsebuf, nm)) {
			FUNC10("error reading trusted-keys-file: %s", f->str);
			FUNC11(parsebuf);
			return 0;
		}
	}
	for(f = cfg->trust_anchor_list; f; f = f->next) {
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		if(!FUNC3(anchors, parsebuf, f->str)) {
			FUNC10("error in trust-anchor: \"%s\"", f->str);
			FUNC11(parsebuf);
			return 0;
		}
	}
	if(cfg->dlv_anchor_file && cfg->dlv_anchor_file[0] != 0) {
		struct trust_anchor* dlva;
		nm = cfg->dlv_anchor_file;
		if(cfg->chrootdir && cfg->chrootdir[0] && FUNC14(nm,
			cfg->chrootdir, FUNC13(cfg->chrootdir)) == 0)
			nm += FUNC13(cfg->chrootdir);
		if(!(dlva = FUNC2(anchors, parsebuf,
			nm, 1))) {
			FUNC10("error reading dlv-anchor-file: %s", 
				cfg->dlv_anchor_file);
			FUNC11(parsebuf);
			return 0;
		}
		FUNC8(&anchors->lock);
		anchors->dlv_anchor = dlva;
		FUNC9(&anchors->lock);
	}
	for(f = cfg->dlv_anchor_list; f; f = f->next) {
		struct trust_anchor* dlva;
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		if(!(dlva = FUNC3(
			anchors, parsebuf, f->str))) {
			FUNC10("error in dlv-anchor: \"%s\"", f->str);
			FUNC11(parsebuf);
			return 0;
		}
		FUNC8(&anchors->lock);
		anchors->dlv_anchor = dlva;
		FUNC9(&anchors->lock);
	}
	/* do autr last, so that it sees what anchors are filled by other
	 * means can can print errors about double config for the name */
	for(f = cfg->auto_trust_anchor_file_list; f; f = f->next) {
		if(!f->str || f->str[0] == 0) /* empty "" */
			continue;
		nm = f->str;
		if(cfg->chrootdir && cfg->chrootdir[0] && FUNC14(nm,
			cfg->chrootdir, FUNC13(cfg->chrootdir)) == 0)
			nm += FUNC13(cfg->chrootdir);
		if(!FUNC6(anchors, nm)) {
			FUNC10("error reading auto-trust-anchor-file: %s", 
				f->str);
			FUNC11(parsebuf);
			return 0;
		}
	}
	/* first assemble, since it may delete useless anchors */
	FUNC4(anchors);
	FUNC7(anchors);
	FUNC11(parsebuf);
	if(verbosity >= VERB_ALGO) FUNC5(anchors);
	return 1;
}