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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  encoded ;
typedef  int /*<<< orphan*/  blob ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* SSH_COM_PRIVATE_BEGIN ; 
 int /*<<< orphan*/  __progname ; 
 struct sshkey* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  identity_file ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,struct sshkey**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/ * FUNC11 (char*,char*) ; 
 int FUNC12 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC13(struct passwd *pw, struct sshkey **k, int *private)
{
	int r, blen, escaped = 0;
	u_int len;
	char line[1024];
	u_char blob[8096];
	char encoded[8096];
	FILE *fp;

	if ((fp = FUNC3(identity_file, "r")) == NULL)
		FUNC1("%s: %s: %s", __progname, identity_file, FUNC7(errno));
	encoded[0] = '\0';
	while ((blen = FUNC4(fp, line, sizeof(line))) != -1) {
		if (blen > 0 && line[blen - 1] == '\\')
			escaped++;
		if (FUNC10(line, "----", 4) == 0 ||
		    FUNC11(line, ": ") != NULL) {
			if (FUNC11(line, SSH_COM_PRIVATE_BEGIN) != NULL)
				*private = 1;
			if (FUNC11(line, " END ") != NULL) {
				break;
			}
			/* fprintf(stderr, "ignore: %s", line); */
			continue;
		}
		if (escaped) {
			escaped--;
			/* fprintf(stderr, "escaped: %s", line); */
			continue;
		}
		FUNC8(encoded, line, sizeof(encoded));
	}
	len = FUNC9(encoded);
	if (((len % 4) == 3) &&
	    (encoded[len-1] == '=') &&
	    (encoded[len-2] == '=') &&
	    (encoded[len-3] == '='))
		encoded[len-3] = '\0';
	blen = FUNC12(encoded, blob, sizeof(blob));
	if (blen < 0)
		FUNC1("uudecode failed.");
	if (*private)
		*k = FUNC0(blob, blen);
	else if ((r = FUNC6(blob, blen, k)) != 0)
		FUNC1("decode blob failed: %s", FUNC5(r));
	FUNC2(fp);
}