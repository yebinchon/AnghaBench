#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_14__ {int /*<<< orphan*/  path; } ;
struct TYPE_13__ {int /*<<< orphan*/  id; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {TYPE_2__ path; TYPE_1__ ipc; } ;
struct TYPE_16__ {int id; scalar_t__ len; TYPE_3__ tt; } ;
typedef  TYPE_4__ tokenstr_t ;
typedef  int /*<<< orphan*/  tok ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
#define  AUT_HEADER32 133 
#define  AUT_IPC 132 
#define  AUT_PATH 131 
#define  AUT_PROCESS32 130 
#define  AUT_RETURN32 129 
#define  AUT_SUBJECT32 128 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPT_v ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int opttochk ; 
 int FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int FUNC7 (TYPE_4__,int*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC9 (TYPE_4__,int*) ; 
 int FUNC10 (TYPE_4__,TYPE_4__,int*) ; 
 int FUNC11 (TYPE_4__,int*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int
FUNC12(FILE *fp)
{
	tokenstr_t tok_hdr32_copy;
	u_char *buf;
	tokenstr_t tok;
	int reclen;
	int bytesread;
	int selected;
	uint32_t optchkd;
	int print;

	int err = 0;
	while ((reclen = FUNC2(fp, &buf)) != -1) {
		optchkd = 0;
		bytesread = 0;
		selected = 1;
		while ((selected == 1) && (bytesread < reclen)) {
			if (-1 == FUNC1(&tok, buf + bytesread,
			    reclen - bytesread)) {
				/* Is this an incomplete record? */
				err = 1;
				break;
			}

			/*
			 * For each token type we have have different
			 * selection criteria.
			 */
			switch(tok.id) {
			case AUT_HEADER32:
					selected = FUNC7(tok,
					    &optchkd);
					FUNC3(&tok, &tok_hdr32_copy,
					    sizeof(tok));
					break;

			case AUT_PROCESS32:
					selected = FUNC9(tok,
					    &optchkd);
					break;

			case AUT_SUBJECT32:
					selected = FUNC11(tok,
					    &optchkd);
					break;

			case AUT_IPC:
					selected = FUNC8(
					    tok.tt.ipc.type, tok.tt.ipc.id,
					    &optchkd); 
					break;

			case AUT_PATH:
					selected = FUNC6(
					    tok.tt.path.path, &optchkd);
					break;	

			case AUT_RETURN32:
				selected = FUNC10(tok,
				    tok_hdr32_copy, &optchkd);
				break;

			default:
				break;
			}
			bytesread += tok.len;
		}
		/* Check if all the options were matched. */
		print = ((selected == 1) && (!err) && (!(opttochk & ~optchkd)));
		if (FUNC0(opttochk, OPT_v))
			print = !print;
		if (print)
			(void) FUNC5(buf, 1, reclen, stdout);
		FUNC4(buf);
	}
	return (0);
}