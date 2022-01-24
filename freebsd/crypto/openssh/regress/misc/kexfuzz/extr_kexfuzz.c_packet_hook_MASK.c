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
typedef  int u_char ;
struct sshbuf {int dummy; } ;
struct ssh {int dummy; } ;
struct hook_ctx {int* s2c; int* c2s; int trigger_direction; int packet_index; int /*<<< orphan*/ * dump_path; int /*<<< orphan*/ * replace_data; struct ssh* client; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int C2S ; 
 int S2C ; 
 scalar_t__ do_debug ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (struct sshbuf*) ; 
 int* FUNC9 (struct sshbuf*) ; 
 int FUNC10 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sshbuf*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC12(struct ssh *ssh, struct sshbuf *packet, u_char *typep, void *_ctx)
{
	struct hook_ctx *ctx = (struct hook_ctx *)_ctx;
	int mydirection = ssh == ctx->client ? S2C : C2S;
	int *packet_count = mydirection == S2C ? ctx->s2c : ctx->c2s;
	FILE *dumpfile;
	int r;

	if (do_debug) {
		FUNC5("%s packet %d type %u:\n",
		    mydirection == S2C ? "s2c" : "c2s",
		    *packet_count, *typep);
		FUNC6(packet, stdout);
	}
	if (mydirection == ctx->trigger_direction &&
	    ctx->packet_index == *packet_count) {
		if (ctx->replace_data != NULL) {
			FUNC11(packet);
			/* Type is first byte of packet */
			if ((r = FUNC7(ctx->replace_data,
			    typep)) != 0 ||
			    (r = FUNC10(packet, ctx->replace_data)) != 0)
				return r;
			if (do_debug) {
				FUNC5("***** replaced packet type %u\n",
				    *typep);
				FUNC6(packet, stdout);
			}
		} else if (ctx->dump_path != NULL) {
			if ((dumpfile = FUNC3(ctx->dump_path, "w+")) == NULL)
				FUNC0(1, "fopen %s", ctx->dump_path);
			/* Write { type, packet } */
			if (FUNC4(typep, 1, 1, dumpfile) != 1)
				FUNC0(1, "fwrite type %s", ctx->dump_path);
			if (FUNC8(packet) != 0 &&
			    FUNC4(FUNC9(packet), FUNC8(packet),
			    1, dumpfile) != 1)
				FUNC0(1, "fwrite body %s", ctx->dump_path);
			if (do_debug) {
				FUNC5("***** dumped packet type %u len %zu\n",
				    *typep, FUNC8(packet));
			}
			FUNC2(dumpfile);
			/* No point in continuing */
			FUNC1(0);
		}
	}
	(*packet_count)++;
	return 0;
}