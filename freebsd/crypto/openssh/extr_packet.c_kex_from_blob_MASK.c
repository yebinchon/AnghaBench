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
typedef  int /*<<< orphan*/  u_int ;
struct sshbuf {int dummy; } ;
struct kex {int server; int done; int /*<<< orphan*/ * peer; int /*<<< orphan*/ * my; int /*<<< orphan*/  server_version_string; int /*<<< orphan*/  client_version_string; int /*<<< orphan*/  flags; int /*<<< orphan*/  kex_type; int /*<<< orphan*/  hostkey_nid; int /*<<< orphan*/  hostkey_type; int /*<<< orphan*/  hostkey_alg; int /*<<< orphan*/  we_need; int /*<<< orphan*/  session_id_len; int /*<<< orphan*/  session_id; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 struct kex* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kex*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 void* FUNC7 () ; 

__attribute__((used)) static int
FUNC8(struct sshbuf *m, struct kex **kexp)
{
	struct kex *kex;
	int r;

	if ((kex = FUNC0(1, sizeof(struct kex))) == NULL ||
	    (kex->my = FUNC7()) == NULL ||
	    (kex->peer = FUNC7()) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC4(m, &kex->session_id, &kex->session_id_len)) != 0 ||
	    (r = FUNC6(m, &kex->we_need)) != 0 ||
	    (r = FUNC3(m, &kex->hostkey_alg, NULL)) != 0 ||
	    (r = FUNC6(m, (u_int *)&kex->hostkey_type)) != 0 ||
	    (r = FUNC6(m, (u_int *)&kex->hostkey_nid)) != 0 ||
	    (r = FUNC6(m, &kex->kex_type)) != 0 ||
	    (r = FUNC5(m, kex->my)) != 0 ||
	    (r = FUNC5(m, kex->peer)) != 0 ||
	    (r = FUNC6(m, &kex->flags)) != 0 ||
	    (r = FUNC3(m, &kex->client_version_string, NULL)) != 0 ||
	    (r = FUNC3(m, &kex->server_version_string, NULL)) != 0)
		goto out;
	kex->server = 1;
	kex->done = 1;
	r = 0;
 out:
	if (r != 0 || kexp == NULL) {
		if (kex != NULL) {
			FUNC2(kex->my);
			FUNC2(kex->peer);
			FUNC1(kex);
		}
		if (kexp != NULL)
			*kexp = NULL;
	} else {
		*kexp = kex;
	}
	return r;
}