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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  const u_char ;
struct hmac_ctx {int dummy; } ;
struct TYPE_3__ {int sc_flags; int sc_ealgo; int /*<<< orphan*/  sc_ivkey; int /*<<< orphan*/  sc_ivctx; int /*<<< orphan*/  sc_ekey; int /*<<< orphan*/  sc_mkey; } ;
struct TYPE_4__ {scalar_t__ md_iterations; int /*<<< orphan*/  const* md_salt; } ;
struct geli_dev {char* name; TYPE_1__ sc; TYPE_2__ md; } ;
typedef  int /*<<< orphan*/  mkey ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  dkey ;

/* Variables and functions */
#define  CRYPTO_AES_XTS 128 
 int G_ELI_DATAIVKEYLEN ; 
 int G_ELI_DATAKEYLEN ; 
 int G_ELI_FLAG_AUTH ; 
 int /*<<< orphan*/  G_ELI_MAXKEYLEN ; 
 int G_ELI_USERKEYLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hmac_ctx*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hmac_ctx*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hmac_ctx*,int /*<<< orphan*/  const*,int) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC10 (struct geli_dev*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (char const*) ; 

__attribute__((used)) static int
FUNC15(struct geli_dev *gdev, const char *passphrase, u_char *mkeyp)
{
	u_char key[G_ELI_USERKEYLEN], mkey[G_ELI_DATAIVKEYLEN], *mkp;
	u_int keynum;
	struct hmac_ctx ctx;
	int error;

	if (mkeyp != NULL) {
		FUNC11(&mkey, mkeyp, G_ELI_DATAIVKEYLEN);
		FUNC3(mkeyp, G_ELI_DATAIVKEYLEN);
		goto found_key;
	}

	if (FUNC10(gdev, mkey) == 0) {
		goto found_key;
	}

	FUNC6(&ctx, NULL, 0);
	/*
	 * Prepare Derived-Key from the user passphrase.
	 */
	if (gdev->md.md_iterations < 0) {
		/* XXX TODO: Support loading key files. */
		return (1);
	} else if (gdev->md.md_iterations == 0) {
		FUNC7(&ctx, gdev->md.md_salt,
		    sizeof(gdev->md.md_salt));
		FUNC7(&ctx, (const uint8_t *)passphrase,
		    FUNC14(passphrase));
	} else if (gdev->md.md_iterations > 0) {
		FUNC13("Calculating GELI Decryption Key for %s %d"
		    " iterations...\n", gdev->name, gdev->md.md_iterations);
		u_char dkey[G_ELI_USERKEYLEN];

		FUNC12(dkey, sizeof(dkey), gdev->md.md_salt,
		    sizeof(gdev->md.md_salt), passphrase,
		    gdev->md.md_iterations);
		FUNC7(&ctx, dkey, sizeof(dkey));
		FUNC3(dkey, sizeof(dkey));
	}

	FUNC5(&ctx, key, 0);

	error = FUNC8(&gdev->md, key, mkey, &keynum);
	if (error == -1) {
		FUNC3(mkey, sizeof(mkey));
		FUNC3(key, sizeof(key));
		FUNC13("Bad GELI key: bad password?\n");
		return (error);
	} else if (error != 0) {
		FUNC3(mkey, sizeof(mkey));
		FUNC3(key, sizeof(key));
		FUNC13("Failed to decrypt GELI master key: %d\n", error);
		return (error);
	} else {
		/* Add key to keychain */
		FUNC9(key);
		FUNC3(&key, sizeof(key));
	}

found_key:
	/* Store the keys */
	FUNC2(mkey, gdev->sc.sc_mkey, sizeof(gdev->sc.sc_mkey));
	FUNC2(mkey, gdev->sc.sc_ivkey, sizeof(gdev->sc.sc_ivkey));
	mkp = mkey + sizeof(gdev->sc.sc_ivkey);
	if ((gdev->sc.sc_flags & G_ELI_FLAG_AUTH) == 0) {
		FUNC2(mkp, gdev->sc.sc_ekey, G_ELI_DATAKEYLEN);
	} else {
		/*
		 * The encryption key is: ekey = HMAC_SHA512(Data-Key, 0x10)
		 */
		FUNC4(mkp, G_ELI_MAXKEYLEN, (const uint8_t *)"\x10", 1,
		    gdev->sc.sc_ekey, 0);
	}
	FUNC3(mkey, sizeof(mkey));

	/* Initialize the per-sector IV. */
	switch (gdev->sc.sc_ealgo) {
	case CRYPTO_AES_XTS:
		break;
	default:
		FUNC0(&gdev->sc.sc_ivctx);
		FUNC1(&gdev->sc.sc_ivctx, gdev->sc.sc_ivkey,
		    sizeof(gdev->sc.sc_ivkey));
		break;
	}

	return (0);
}