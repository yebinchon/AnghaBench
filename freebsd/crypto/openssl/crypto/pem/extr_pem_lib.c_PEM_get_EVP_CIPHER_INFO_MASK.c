#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  iv; int /*<<< orphan*/  const* cipher; } ;
typedef  int /*<<< orphan*/  ProcType ;
typedef  TYPE_1__ EVP_CIPHER_INFO ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENCRYPTED ;
typedef  int /*<<< orphan*/  DEKInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 int /*<<< orphan*/  PEM_F_PEM_GET_EVP_CIPHER_INFO ; 
 int /*<<< orphan*/  PEM_R_MISSING_DEK_IV ; 
 int /*<<< orphan*/  PEM_R_NOT_DEK_INFO ; 
 int /*<<< orphan*/  PEM_R_NOT_ENCRYPTED ; 
 int /*<<< orphan*/  PEM_R_NOT_PROC_TYPE ; 
 int /*<<< orphan*/  PEM_R_SHORT_HEADER ; 
 int /*<<< orphan*/  PEM_R_UNEXPECTED_DEK_IV ; 
 int /*<<< orphan*/  PEM_R_UNSUPPORTED_ENCRYPTION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char const*,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

int FUNC8(char *header, EVP_CIPHER_INFO *cipher)
{
    static const char ProcType[] = "Proc-Type:";
    static const char ENCRYPTED[] = "ENCRYPTED";
    static const char DEKInfo[] = "DEK-Info:";
    const EVP_CIPHER *enc = NULL;
    int ivlen;
    char *dekinfostart, c;

    cipher->cipher = NULL;
    FUNC4(cipher->iv, 0, sizeof(cipher->iv));
    if ((header == NULL) || (*header == '\0') || (*header == '\n'))
        return 1;

    if (FUNC6(header, ProcType, sizeof(ProcType)-1) != 0) {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_PROC_TYPE);
        return 0;
    }
    header += sizeof(ProcType)-1;
    header += FUNC7(header, " \t");

    if (*header++ != '4' || *header++ != ',')
        return 0;
    header += FUNC7(header, " \t");

    /* We expect "ENCRYPTED" followed by optional white-space + line break */
    if (FUNC6(header, ENCRYPTED, sizeof(ENCRYPTED)-1) != 0 ||
        FUNC7(header+sizeof(ENCRYPTED)-1, " \t\r\n") == 0) {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_ENCRYPTED);
        return 0;
    }
    header += sizeof(ENCRYPTED)-1;
    header += FUNC7(header, " \t\r");
    if (*header++ != '\n') {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_SHORT_HEADER);
        return 0;
    }

    /*-
     * https://tools.ietf.org/html/rfc1421#section-4.6.1.3
     * We expect "DEK-Info: algo[,hex-parameters]"
     */
    if (FUNC6(header, DEKInfo, sizeof(DEKInfo)-1) != 0) {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_NOT_DEK_INFO);
        return 0;
    }
    header += sizeof(DEKInfo)-1;
    header += FUNC7(header, " \t");

    /*
     * DEK-INFO is a comma-separated combination of algorithm name and optional
     * parameters.
     */
    dekinfostart = header;
    header += FUNC5(header, " \t,");
    c = *header;
    *header = '\0';
    cipher->cipher = enc = FUNC1(dekinfostart);
    *header = c;
    header += FUNC7(header, " \t");

    if (enc == NULL) {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_UNSUPPORTED_ENCRYPTION);
        return 0;
    }
    ivlen = FUNC0(enc);
    if (ivlen > 0 && *header++ != ',') {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_MISSING_DEK_IV);
        return 0;
    } else if (ivlen == 0 && *header == ',') {
        FUNC2(PEM_F_PEM_GET_EVP_CIPHER_INFO, PEM_R_UNEXPECTED_DEK_IV);
        return 0;
    }

    if (!FUNC3(&header, cipher->iv, FUNC0(enc)))
        return 0;

    return 1;
}