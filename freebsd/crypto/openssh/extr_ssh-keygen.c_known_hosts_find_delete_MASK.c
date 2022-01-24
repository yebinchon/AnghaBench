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
struct known_hosts_ctx {int found_key; char* host; int invalid; int /*<<< orphan*/  out; } ;
struct hostkey_foreach_line {scalar_t__ status; scalar_t__ marker; char* line; int /*<<< orphan*/  linenum; int /*<<< orphan*/  path; int /*<<< orphan*/  comment; int /*<<< orphan*/  key; } ;
typedef  enum sshkey_fp_rep { ____Placeholder_sshkey_fp_rep } sshkey_fp_rep ;

/* Variables and functions */
 scalar_t__ HKF_STATUS_INVALID ; 
 scalar_t__ HKF_STATUS_MATCHED ; 
 scalar_t__ MRK_CA ; 
 scalar_t__ MRK_NONE ; 
 scalar_t__ MRK_REVOKE ; 
 int SSH_DIGEST_SHA1 ; 
 int SSH_FP_BUBBLEBABBLE ; 
 int SSH_FP_DEFAULT ; 
 scalar_t__ delete_host ; 
 scalar_t__ find_host ; 
 int fingerprint_hash ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ hash_hosts ; 
 int /*<<< orphan*/  FUNC2 (struct hostkey_foreach_line*,struct known_hosts_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ print_bubblebabble ; 
 scalar_t__ print_fingerprint ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  quiet ; 
 char* FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct hostkey_foreach_line *l, void *_ctx)
{
	struct known_hosts_ctx *ctx = (struct known_hosts_ctx *)_ctx;
	enum sshkey_fp_rep rep;
	int fptype;
	char *fp;

	fptype = print_bubblebabble ? SSH_DIGEST_SHA1 : fingerprint_hash;
	rep =    print_bubblebabble ? SSH_FP_BUBBLEBABBLE : SSH_FP_DEFAULT;

	if (l->status == HKF_STATUS_MATCHED) {
		if (delete_host) {
			if (l->marker != MRK_NONE) {
				/* Don't remove CA and revocation lines */
				FUNC0(ctx->out, "%s\n", l->line);
			} else {
				/*
				 * Hostname matches and has no CA/revoke
				 * marker, delete it by *not* writing the
				 * line to ctx->out.
				 */
				ctx->found_key = 1;
				if (!quiet)
					FUNC5("# Host %s found: line %lu\n",
					    ctx->host, l->linenum);
			}
			return 0;
		} else if (find_host) {
			ctx->found_key = 1;
			if (!quiet) {
				FUNC5("# Host %s found: line %lu %s\n",
				    ctx->host,
				    l->linenum, l->marker == MRK_CA ? "CA" :
				    (l->marker == MRK_REVOKE ? "REVOKED" : ""));
			}
			if (hash_hosts)
				FUNC2(l, ctx);
			else if (print_fingerprint) {
				fp = FUNC6(l->key, fptype, rep);
				FUNC4("%s %s %s %s\n", ctx->host,
				    FUNC7(l->key), fp, l->comment);
				FUNC1(fp);
			} else
				FUNC0(ctx->out, "%s\n", l->line);
			return 0;
		}
	} else if (delete_host) {
		/* Retain non-matching hosts when deleting */
		if (l->status == HKF_STATUS_INVALID) {
			ctx->invalid = 1;
			FUNC3("%s:%lu: invalid line", l->path, l->linenum);
		}
		FUNC0(ctx->out, "%s\n", l->line);
	}
	return 0;
}