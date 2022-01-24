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
typedef  int /*<<< orphan*/  uint8_t ;
struct kerneldumpkey {int kdk_encryptedkeysize; int kdk_encryption; int /*<<< orphan*/ * kdk_iv; int /*<<< orphan*/  kdk_encryptedkey; } ;
typedef  scalar_t__ ssize_t ;
typedef  int pid_t ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  RSA ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int KERNELDUMP_BUFFER_SIZE ; 
#define  KERNELDUMP_ENC_AES_256_CBC 129 
#define  KERNELDUMP_ENC_CHACHA20 128 
 int KERNELDUMP_KEY_MAX_SIZE ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  RSA_PKCS1_PADDING ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC13 () ; 
 int FUNC14 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC21 (char const*,char*) ; 
 int FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC25 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC27 (char*,...) ; 
 scalar_t__ FUNC28 (int,int /*<<< orphan*/ *,int) ; 
 struct kerneldumpkey* FUNC29 (int) ; 
 scalar_t__ FUNC30 (int) ; 
 int FUNC31 (int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool
FUNC32(int ofd, const char *privkeyfile, const char *keyfile,
    const char *input)
{
	uint8_t buf[KERNELDUMP_BUFFER_SIZE], key[KERNELDUMP_KEY_MAX_SIZE],
	    chachaiv[4 * 4];
	EVP_CIPHER_CTX *ctx;
	const EVP_CIPHER *cipher;
	FILE *fp;
	struct kerneldumpkey *kdk;
	RSA *privkey;
	int ifd, kfd, olen, privkeysize;
	ssize_t bytes;
	pid_t pid;

	FUNC11(ofd >= 0);
	FUNC11(privkeyfile != NULL);
	FUNC11(keyfile != NULL);
	FUNC11(input != NULL);

	ctx = NULL;
	privkey = NULL;

	/*
	 * Decrypt a core dump in a child process so we can unlink a partially
	 * decrypted core if the child process fails.
	 */
	pid = FUNC22();
	if (pid == -1) {
		FUNC26(LOG_ERR, "Unable to create child process");
		FUNC17(ofd);
		return (false);
	}

	if (pid > 0) {
		FUNC17(ofd);
		return (FUNC30(pid) == 0);
	}

	kfd = FUNC25(keyfile, O_RDONLY);
	if (kfd == -1) {
		FUNC26(LOG_ERR, "Unable to open %s", keyfile);
		goto failed;
	}
	ifd = FUNC25(input, O_RDONLY);
	if (ifd == -1) {
		FUNC26(LOG_ERR, "Unable to open %s", input);
		goto failed;
	}
	fp = FUNC21(privkeyfile, "r");
	if (fp == NULL) {
		FUNC26(LOG_ERR, "Unable to open %s", privkeyfile);
		goto failed;
	}

	if (FUNC16() < 0) {
		FUNC26(LOG_ERR, "Unable to enter capability mode");
		goto failed;
	}

	privkey = FUNC13();
	if (privkey == NULL) {
		FUNC27("Unable to allocate an RSA structure: %s",
		    FUNC0(FUNC1(), NULL));
		goto failed;
	}
	ctx = FUNC3();
	if (ctx == NULL)
		goto failed;

	kdk = FUNC29(kfd);
	FUNC17(kfd);
	if (kdk == NULL)
		goto failed;

	privkey = FUNC10(fp, &privkey, NULL, NULL);
	FUNC20(fp);
	if (privkey == NULL) {
		FUNC27("Unable to read data from %s.", privkeyfile);
		goto failed;
	}

	privkeysize = FUNC15(privkey);
	if (privkeysize != (int)kdk->kdk_encryptedkeysize) {
		FUNC27("RSA modulus size mismatch: equals %db and should be %ub.",
		    8 * privkeysize, 8 * kdk->kdk_encryptedkeysize);
		goto failed;
	}

	switch (kdk->kdk_encryption) {
	case KERNELDUMP_ENC_AES_256_CBC:
		cipher = FUNC8();
		break;
	case KERNELDUMP_ENC_CHACHA20:
		cipher = FUNC9();
		break;
	default:
		FUNC27("Invalid encryption algorithm.");
		goto failed;
	}

	if (FUNC14(kdk->kdk_encryptedkeysize,
	    kdk->kdk_encryptedkey, key, privkey,
	    RSA_PKCS1_PADDING) != sizeof(key)) {
		FUNC27("Unable to decrypt key: %s",
		    FUNC0(FUNC1(), NULL));
		goto failed;
	}
	FUNC12(privkey);
	privkey = NULL;

	if (kdk->kdk_encryption == KERNELDUMP_ENC_CHACHA20) {
		/*
		 * OpenSSL treats the IV as 4 little-endian 32 bit integers.
		 *
		 * The first two represent a 64-bit counter, where the low half
		 * is the first 32-bit word.
		 *
		 * Start at counter block zero...
		 */
		FUNC24(chachaiv, 0, 4 * 2);
		/*
		 * And use the IV specified by the dump.
		 */
		FUNC23(&chachaiv[4 * 2], kdk->kdk_iv, 4 * 2);
		FUNC6(ctx, cipher, NULL, key, chachaiv);
	} else
		FUNC6(ctx, cipher, NULL, key, kdk->kdk_iv);
	FUNC4(ctx, 0);

	FUNC19(key, sizeof(key));

	do {
		bytes = FUNC28(ifd, buf, sizeof(buf));
		if (bytes < 0) {
			FUNC26(LOG_ERR, "Unable to read data from %s",
			    input);
			goto failed;
		}

		if (bytes > 0) {
			if (FUNC7(ctx, buf, &olen, buf,
			    bytes) == 0) {
				FUNC27("Unable to decrypt core.");
				goto failed;
			}
		} else {
			if (FUNC5(ctx, buf, &olen) == 0) {
				FUNC27("Unable to decrypt core.");
				goto failed;
			}
		}

		if (olen > 0 && FUNC31(ofd, buf, olen) != olen) {
			FUNC26(LOG_ERR, "Unable to write core");
			goto failed;
		}
	} while (bytes > 0);

	FUNC19(buf, sizeof(buf));
	FUNC2(ctx);
	FUNC18(0);
failed:
	FUNC19(key, sizeof(key));
	FUNC19(buf, sizeof(buf));
	FUNC12(privkey);
	if (ctx != NULL)
		FUNC2(ctx);
	FUNC18(1);
}