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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  label_prefix ;
typedef  int /*<<< orphan*/  hkdflabel ;
typedef  int /*<<< orphan*/  WPACKET ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int EVP_MAX_MD_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_PKEY_HKDEF_MODE_EXPAND_ONLY ; 
 int /*<<< orphan*/  EVP_PKEY_HKDF ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS13_HKDF_EXPAND ; 
 int /*<<< orphan*/  SSL_R_TLS_ILLEGAL_EXPORTER_LABEL ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int TLS13_MAX_LABEL_LEN ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 

int FUNC20(SSL *s, const EVP_MD *md, const unsigned char *secret,
                             const unsigned char *label, size_t labellen,
                             const unsigned char *data, size_t datalen,
                             unsigned char *out, size_t outlen, int fatal)
{
#ifdef CHARSET_EBCDIC
    static const unsigned char label_prefix[] = { 0x74, 0x6C, 0x73, 0x31, 0x33, 0x20, 0x00 };
#else
    static const unsigned char label_prefix[] = "tls13 ";
#endif
    EVP_PKEY_CTX *pctx = FUNC4(EVP_PKEY_HKDF, NULL);
    int ret;
    size_t hkdflabellen;
    size_t hashlen;
    /*
     * 2 bytes for length of derived secret + 1 byte for length of combined
     * prefix and label + bytes for the label itself + 1 byte length of hash
     * + bytes for the hash itself
     */
    unsigned char hkdflabel[sizeof(uint16_t) + sizeof(uint8_t) +
                            + (sizeof(label_prefix) - 1) + TLS13_MAX_LABEL_LEN
                            + 1 + EVP_MAX_MD_SIZE];
    WPACKET pkt;

    if (pctx == NULL)
        return 0;

    if (labellen > TLS13_MAX_LABEL_LEN) {
        if (fatal) {
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        } else {
            /*
             * Probably we have been called from SSL_export_keying_material(),
             * or SSL_export_keying_material_early().
             */
            FUNC9(SSL_F_TLS13_HKDF_EXPAND, SSL_R_TLS_ILLEGAL_EXPORTER_LABEL);
        }
        FUNC2(pctx);
        return 0;
    }

    hashlen = FUNC0(md);

    if (!FUNC15(&pkt, hkdflabel, sizeof(hkdflabel), 0)
            || !FUNC17(&pkt, outlen)
            || !FUNC18(&pkt)
            || !FUNC16(&pkt, label_prefix, sizeof(label_prefix) - 1)
            || !FUNC16(&pkt, label, labellen)
            || !FUNC12(&pkt)
            || !FUNC19(&pkt, data, (data == NULL) ? 0 : datalen)
            || !FUNC14(&pkt, &hkdflabellen)
            || !FUNC13(&pkt)) {
        FUNC2(pctx);
        FUNC11(&pkt);
        if (fatal)
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC9(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
        return 0;
    }

    ret = FUNC8(pctx) <= 0
            || FUNC3(pctx, EVP_PKEY_HKDEF_MODE_EXPAND_ONLY)
               <= 0
            || FUNC6(pctx, md) <= 0
            || FUNC5(pctx, secret, hashlen) <= 0
            || FUNC1(pctx, hkdflabel, hkdflabellen) <= 0
            || FUNC7(pctx, out, &outlen) <= 0;

    FUNC2(pctx);

    if (ret != 0) {
        if (fatal)
            FUNC10(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS13_HKDF_EXPAND,
                     ERR_R_INTERNAL_ERROR);
        else
            FUNC9(SSL_F_TLS13_HKDF_EXPAND, ERR_R_INTERNAL_ERROR);
    }

    return ret == 0;
}