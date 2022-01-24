#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_5__ {scalar_t__ endtime; } ;
struct TYPE_4__ {int /*<<< orphan*/  keytype; } ;
struct TYPE_6__ {int /*<<< orphan*/  server; TYPE_2__ times; int /*<<< orphan*/  flags; TYPE_1__ session; } ;
struct ctx {TYPE_3__ mcreds; int /*<<< orphan*/  whichfields; } ;
struct copy_cred_cache_options {scalar_t__ krbtgt_only_flag; scalar_t__ fcache_version_integer; scalar_t__ valid_for_string; scalar_t__ flags_string; int /*<<< orphan*/  enctype_string; int /*<<< orphan*/  service_string; } ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
typedef  int /*<<< orphan*/  krb5_ccache ;
typedef  int /*<<< orphan*/  ctx ;

/* Variables and functions */
 int /*<<< orphan*/  KRB5_TC_MATCH_FLAGS ; 
 int /*<<< orphan*/  KRB5_TC_MATCH_KEYTYPE ; 
 int /*<<< orphan*/  KRB5_TC_MATCH_TIMES ; 
 int /*<<< orphan*/  KRB5_TGS_NAME ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  kcc_context ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ctx*,unsigned int*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  matchfunc ; 
 int /*<<< orphan*/  FUNC14 (struct ctx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (scalar_t__,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 

int
FUNC18(struct copy_cred_cache_options *opt, int argc, char **argv)
{
    krb5_error_code ret;
    const char *from_name, *to_name;
    krb5_ccache from_ccache, to_ccache;
    unsigned int matched;
    struct ctx ctx;

    FUNC14(&ctx, 0, sizeof(ctx));

    if (opt->service_string) {
	ret = FUNC10(kcc_context, opt->service_string, &ctx.mcreds.server);
	if (ret)
	    FUNC7(kcc_context, 1, ret, "%s", opt->service_string);
    }
    if (opt->enctype_string) {
	krb5_enctype enctype;
	ret = FUNC13(kcc_context, opt->enctype_string, &enctype);
	if (ret)
	    FUNC7(kcc_context, 1, ret, "%s", opt->enctype_string);
	ctx.whichfields |= KRB5_TC_MATCH_KEYTYPE;
	ctx.mcreds.session.keytype = enctype;
    }
    if (opt->flags_string) {
	FUNC15(kcc_context, opt->flags_string, &ctx.mcreds.flags);
	ctx.whichfields |= KRB5_TC_MATCH_FLAGS;
    }
    if (opt->valid_for_string) {
	time_t t = FUNC16(opt->valid_for_string, "s");
	if(t < 0)
	    FUNC0(1, "unknown time \"%s\"", opt->valid_for_string);
	ctx.mcreds.times.endtime = FUNC17(NULL) + t;
	ctx.whichfields |= KRB5_TC_MATCH_TIMES;
    }
    if (opt->fcache_version_integer)
	FUNC12(kcc_context, opt->fcache_version_integer);

    if (argc == 1) {
	from_name = FUNC3(kcc_context);
	to_name = argv[0];
    } else {
	from_name = argv[0];
	to_name = argv[1];
    }

    ret = FUNC6(kcc_context, from_name, &from_ccache);
    if (ret)
	FUNC7(kcc_context, 1, ret, "%s", from_name);

    if (opt->krbtgt_only_flag) {
	krb5_principal client;
	ret = FUNC5(kcc_context, from_ccache, &client);
	if (ret)
	    FUNC7(kcc_context, 1, ret, "getting default principal");
	ret = FUNC9(kcc_context, &ctx.mcreds.server,
				  FUNC11(kcc_context, client),
				  KRB5_TGS_NAME,
				  FUNC11(kcc_context, client),
				  NULL);
	if (ret)
	    FUNC7(kcc_context, 1, ret, "constructing krbtgt principal");
	FUNC8(kcc_context, client);
    }
    ret = FUNC6(kcc_context, to_name, &to_ccache);
    if (ret)
	FUNC7(kcc_context, 1, ret, "%s", to_name);

    ret = FUNC2(kcc_context, from_ccache, to_ccache,
			       matchfunc, &ctx, &matched);
    if (ret)
	FUNC7(kcc_context, 1, ret, "copying cred cache");

    FUNC1(kcc_context, from_ccache);
    if(matched == 0)
	FUNC4(kcc_context, to_ccache);
    else
	FUNC1(kcc_context, to_ccache);

    return matched == 0;
}