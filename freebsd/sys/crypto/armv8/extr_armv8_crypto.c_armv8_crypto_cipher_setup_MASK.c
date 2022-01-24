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
struct cryptoini {int /*<<< orphan*/  cri_klen; int /*<<< orphan*/  cri_key; } ;
struct armv8_crypto_session {int algo; void** dec_schedule; void** enc_schedule; int /*<<< orphan*/  rounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES128_ROUNDS ; 
 int /*<<< orphan*/  AES192_ROUNDS ; 
 int /*<<< orphan*/  AES256_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  CRYPTO_AES_CBC 128 
 int EINVAL ; 
 void* FUNC1 (void*) ; 
 int FUNC2 (void**) ; 
 int /*<<< orphan*/  FUNC3 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct armv8_crypto_session *ses,
    struct cryptoini *encini)
{
	int i;

	switch (ses->algo) {
	case CRYPTO_AES_CBC:
		switch (encini->cri_klen) {
		case 128:
			ses->rounds = AES128_ROUNDS;
			break;
		case 192:
			ses->rounds = AES192_ROUNDS;
			break;
		case 256:
			ses->rounds = AES256_ROUNDS;
			break;
		default:
			FUNC0("invalid CBC/ICM/GCM key length");
			return (EINVAL);
		}
		break;
	default:
		return (EINVAL);
	}

	FUNC4(ses->enc_schedule, encini->cri_key,
	    encini->cri_klen);
	FUNC3(ses->dec_schedule, encini->cri_key,
	    encini->cri_klen);
	for (i = 0; i < FUNC2(ses->enc_schedule); i++) {
		ses->enc_schedule[i] = FUNC1(ses->enc_schedule[i]);
		ses->dec_schedule[i] = FUNC1(ses->dec_schedule[i]);
	}

	return (0);
}