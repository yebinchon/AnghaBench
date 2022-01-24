#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct _gss_mech_switch* elements; } ;
struct _gss_mech_switch {char const* gm_name_prefix; TYPE_1__ gm_mech_oid; void* gm_so; } ;
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTLD_LOCAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct _gss_mech_switch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _PATH_GSS_MECH ; 
 int /*<<< orphan*/  _gss_mech_oids ; 
 int /*<<< orphan*/  _gss_mechs ; 
 scalar_t__ FUNC4 (char*,TYPE_1__*) ; 
 int /*<<< orphan*/  accept_sec_context ; 
 int /*<<< orphan*/  acquire_cred ; 
 int /*<<< orphan*/  add_cred ; 
 int /*<<< orphan*/  canonicalize_name ; 
 int /*<<< orphan*/  compare_name ; 
 int /*<<< orphan*/  context_time ; 
 int /*<<< orphan*/  delete_sec_context ; 
 int /*<<< orphan*/  display_name ; 
 int /*<<< orphan*/  display_status ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 char* FUNC6 () ; 
 void* FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,char*) ; 
 int /*<<< orphan*/  duplicate_name ; 
 int /*<<< orphan*/  export_name ; 
 int /*<<< orphan*/  export_sec_context ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct _gss_mech_switch*) ; 
 int /*<<< orphan*/  get_mic ; 
 int /*<<< orphan*/  gm_link ; 
 scalar_t__ FUNC14 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  import_name ; 
 int /*<<< orphan*/  import_sec_context ; 
 int /*<<< orphan*/  indicate_mechs ; 
 int /*<<< orphan*/  init_sec_context ; 
 int /*<<< orphan*/  inquire_context ; 
 int /*<<< orphan*/  inquire_cred ; 
 int /*<<< orphan*/  inquire_cred_by_mech ; 
 int /*<<< orphan*/  inquire_cred_by_oid ; 
 int /*<<< orphan*/  inquire_mechs_for_name ; 
 int /*<<< orphan*/  inquire_names_for_mech ; 
 int /*<<< orphan*/  inquire_sec_context_by_oid ; 
 scalar_t__ FUNC16 (char) ; 
 struct _gss_mech_switch* FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pname_to_uid ; 
 int /*<<< orphan*/  process_context_token ; 
 int /*<<< orphan*/  pseudo_random ; 
 int /*<<< orphan*/  release_cred ; 
 int /*<<< orphan*/  release_name ; 
 int /*<<< orphan*/  set_cred_option ; 
 int /*<<< orphan*/  set_sec_context_option ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC19 (char**,char*) ; 
 int /*<<< orphan*/  unwrap ; 
 int /*<<< orphan*/  verify_mic ; 
 int /*<<< orphan*/  wrap ; 
 int /*<<< orphan*/  wrap_size_limit ; 

void
FUNC20(void)
{
	OM_uint32	major_status, minor_status;
	FILE		*fp;
	char		buf[256];
	char		*p;
	char		*name, *oid, *lib, *kobj;
	struct _gss_mech_switch *m;
	int		count;
	void		*so;
	const char	*(*prefix_fn)(void);

	if (FUNC1(&_gss_mechs))
		return;

	major_status = FUNC15(&minor_status,
	    &_gss_mech_oids);
	if (major_status)
		return;

	fp = FUNC11(_PATH_GSS_MECH, "r");
	if (!fp) {
		FUNC18(_PATH_GSS_MECH);
		return;
	}

	count = 0;
	while (FUNC10(buf, sizeof(buf), fp)) {
		if (*buf == '#')
			continue;
		p = buf;
		name = FUNC19(&p, "\t\n ");
		if (p) while (FUNC16(*p)) p++;
		oid = FUNC19(&p, "\t\n ");
		if (p) while (FUNC16(*p)) p++;
		lib = FUNC19(&p, "\t\n ");
		if (p) while (FUNC16(*p)) p++;
		kobj = FUNC19(&p, "\t\n ");
		if (!name || !oid || !lib || !kobj)
			continue;

		so = FUNC7(lib, RTLD_LOCAL);
		if (!so) {
			FUNC12(stderr, "dlopen: %s\n", FUNC6());
			continue;
		}

		m = FUNC17(sizeof(struct _gss_mech_switch));
		if (!m)
			break;
		m->gm_so = so;
		if (FUNC4(oid, &m->gm_mech_oid)) {
			FUNC13(m);
			continue;
		}
		
		prefix_fn = (const char *(*)(void))
			FUNC8(so, "_gss_name_prefix");
		if (prefix_fn)
			m->gm_name_prefix = prefix_fn();
		else
			m->gm_name_prefix = "gss";

		major_status = FUNC14(&minor_status,
		    &m->gm_mech_oid, &_gss_mech_oids);
		if (major_status) {
			FUNC13(m->gm_mech_oid.elements);
			FUNC13(m);
			continue;
		}

		FUNC3(acquire_cred);
		FUNC3(release_cred);
		FUNC3(init_sec_context);
		FUNC3(accept_sec_context);
		FUNC3(process_context_token);
		FUNC3(delete_sec_context);
		FUNC3(context_time);
		FUNC3(get_mic);
		FUNC3(verify_mic);
		FUNC3(wrap);
		FUNC3(unwrap);
		FUNC3(display_status);
		FUNC0(indicate_mechs);
		FUNC3(compare_name);
		FUNC3(display_name);
		FUNC3(import_name);
		FUNC3(export_name);
		FUNC3(release_name);
		FUNC3(inquire_cred);
		FUNC3(inquire_context);
		FUNC3(wrap_size_limit);
		FUNC3(add_cred);
		FUNC3(inquire_cred_by_mech);
		FUNC3(export_sec_context);
		FUNC3(import_sec_context);
		FUNC3(inquire_names_for_mech);
		FUNC3(inquire_mechs_for_name);
		FUNC3(canonicalize_name);
		FUNC3(duplicate_name);
		FUNC0(inquire_sec_context_by_oid);
		FUNC0(inquire_cred_by_oid);
		FUNC0(set_sec_context_option);
		FUNC0(set_cred_option);
		FUNC0(pseudo_random);
		FUNC0(pname_to_uid);

		FUNC2(&_gss_mechs, m, gm_link);
		count++;
		continue;

	bad:
		FUNC13(m->gm_mech_oid.elements);
		FUNC13(m);
		FUNC5(so);
		continue;
	}
	FUNC9(fp);
}