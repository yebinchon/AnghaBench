#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct sshmac {size_t key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  enabled; int /*<<< orphan*/  name; } ;
struct sshenc {size_t key_len; size_t iv_len; int /*<<< orphan*/ * cipher; int /*<<< orphan*/  name; int /*<<< orphan*/  iv; int /*<<< orphan*/  key; int /*<<< orphan*/  block_size; int /*<<< orphan*/  enabled; } ;
struct sshcomp {int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
struct sshbuf {int dummy; } ;
struct ssh {TYPE_1__* kex; } ;
struct newkeys {struct sshcomp comp; struct sshmac mac; struct sshenc enc; } ;
struct TYPE_2__ {struct newkeys** newkeys; } ;

/* Variables and functions */
 int SSH_ERR_ALLOC_FAIL ; 
 int SSH_ERR_INVALID_FORMAT ; 
 struct newkeys* FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct newkeys*) ; 
 int FUNC4 (struct sshmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sshbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sshbuf*) ; 
 int FUNC7 (struct sshbuf*,struct sshbuf**) ; 
 int FUNC8 (struct sshbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct sshbuf*,int /*<<< orphan*/ *,size_t*) ; 
 int FUNC10 (struct sshbuf*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct sshbuf*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC12(struct sshbuf *m, struct ssh *ssh, int mode)
{
	struct sshbuf *b = NULL;
	struct sshcomp *comp;
	struct sshenc *enc;
	struct sshmac *mac;
	struct newkeys *newkey = NULL;
	size_t keylen, ivlen, maclen;
	int r;

	if ((newkey = FUNC0(1, sizeof(*newkey))) == NULL) {
		r = SSH_ERR_ALLOC_FAIL;
		goto out;
	}
	if ((r = FUNC7(m, &b)) != 0)
		goto out;
#ifdef DEBUG_PK
	sshbuf_dump(b, stderr);
#endif
	enc = &newkey->enc;
	mac = &newkey->mac;
	comp = &newkey->comp;

	if ((r = FUNC8(b, &enc->name, NULL)) != 0 ||
	    (r = FUNC10(b, (u_int *)&enc->enabled)) != 0 ||
	    (r = FUNC10(b, &enc->block_size)) != 0 ||
	    (r = FUNC9(b, &enc->key, &keylen)) != 0 ||
	    (r = FUNC9(b, &enc->iv, &ivlen)) != 0)
		goto out;
	if ((enc->cipher = FUNC2(enc->name)) == NULL) {
		r = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	if (FUNC1(enc->cipher) == 0) {
		if ((r = FUNC8(b, &mac->name, NULL)) != 0)
			goto out;
		if ((r = FUNC4(mac, mac->name)) != 0)
			goto out;
		if ((r = FUNC10(b, (u_int *)&mac->enabled)) != 0 ||
		    (r = FUNC9(b, &mac->key, &maclen)) != 0)
			goto out;
		if (maclen > mac->key_len) {
			r = SSH_ERR_INVALID_FORMAT;
			goto out;
		}
		mac->key_len = maclen;
	}
	if ((r = FUNC10(b, &comp->type)) != 0 ||
	    (r = FUNC8(b, &comp->name, NULL)) != 0)
		goto out;
	if (FUNC11(b) != 0) {
		r = SSH_ERR_INVALID_FORMAT;
		goto out;
	}
	enc->key_len = keylen;
	enc->iv_len = ivlen;
	ssh->kex->newkeys[mode] = newkey;
	newkey = NULL;
	r = 0;
 out:
	FUNC3(newkey);
	FUNC6(b);
	return r;
}