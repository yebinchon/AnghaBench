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
struct ub_ctx {int /*<<< orphan*/  cfglock; TYPE_2__* env; scalar_t__ finalized; } ;
typedef  int /*<<< orphan*/  ldata ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* cfg; } ;
struct TYPE_3__ {int /*<<< orphan*/  local_data; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int UB_AFTERFINAL ; 
 int UB_NOERROR ; 
 int UB_NOMEM ; 
 int UB_READFILE ; 
 int UB_SYNTAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char*) ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char*,char*,...) ; 
 scalar_t__ FUNC9 (char*) ; 
 char* FUNC10 (char*) ; 

int
FUNC11(struct ub_ctx* ctx, const char* fname)
{
	FILE* in;
	char buf[1024], ldata[1024];
	char* parse, *addr, *name, *ins;
	FUNC6(&ctx->cfglock);
	if(ctx->finalized) {
		FUNC7(&ctx->cfglock);
		errno=EINVAL;
		return UB_AFTERFINAL;
	}
	FUNC7(&ctx->cfglock);
	if(fname == NULL) {
#if defined(UB_ON_WINDOWS) && defined(HAVE_WINDOWS_H)
		/*
		 * If this is Windows NT/XP/2K it's in
		 * %WINDIR%\system32\drivers\etc\hosts.
		 * If this is Windows 95/98/Me it's in %WINDIR%\hosts.
		 */
		name = getenv("WINDIR");
		if (name != NULL) {
			int retval=0;
			snprintf(buf, sizeof(buf), "%s%s", name, 
				"\\system32\\drivers\\etc\\hosts");
			if((retval=ub_ctx_hosts(ctx, buf)) !=0 ) {
				snprintf(buf, sizeof(buf), "%s%s", name, 
					"\\hosts");
				retval=ub_ctx_hosts(ctx, buf);
			}
			return retval;
		}
		return UB_READFILE;
#else
		fname = "/etc/hosts";
#endif /* WIN32 */
	}
	in = FUNC3(fname, "r");
	if(!in) {
		/* error in errno! perror(fname) */
		return UB_READFILE;
	}
	while(FUNC2(buf, (int)sizeof(buf), in)) {
		buf[sizeof(buf)-1] = 0;
		parse=buf;
		while(*parse == ' ' || *parse == '\t')
			parse++;
		if(*parse == '#')
			continue; /* skip comment */
		/* format: <addr> spaces <name> spaces <name> ... */
		addr = parse;
		/* skip addr */
		while(FUNC5((unsigned char)*parse) || *parse == '.' || *parse == ':')
			parse++;
		if(*parse == '\r')
			parse++;
		if(*parse == '\n' || *parse == 0)
			continue;
		if(*parse == '%') 
			continue; /* ignore macOSX fe80::1%lo0 localhost */
		if(*parse != ' ' && *parse != '\t') {
			/* must have whitespace after address */
			FUNC1(in);
			errno=EINVAL;
			return UB_SYNTAX;
		}
		*parse++ = 0; /* end delimiter for addr ... */
		/* go to names and add them */
		while(*parse) {
			while(*parse == ' ' || *parse == '\t' || *parse=='\n'
				|| *parse=='\r')
				parse++;
			if(*parse == 0 || *parse == '#')
				break;
			/* skip name, allows (too) many printable characters */
			name = parse;
			while('!' <= *parse && *parse <= '~')
				parse++;
			if(*parse)
				*parse++ = 0; /* end delimiter for name */
			FUNC8(ldata, sizeof(ldata), "%s %s %s",
				name, FUNC9(addr)?"AAAA":"A", addr);
			ins = FUNC10(ldata);
			if(!ins) {
				/* out of memory */
				FUNC1(in);
				errno=ENOMEM;
				return UB_NOMEM;
			}
			FUNC6(&ctx->cfglock);
			if(!FUNC0(&ctx->env->cfg->local_data, 
				ins)) {
				FUNC7(&ctx->cfglock);
				FUNC1(in);
				errno=ENOMEM;
				return UB_NOMEM;
			}
			FUNC7(&ctx->cfglock);
		}
	}
	FUNC1(in);
	return UB_NOERROR;
}