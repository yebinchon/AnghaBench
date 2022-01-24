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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  TYPE_1__ SRTP_PROTECTION_PROFILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char const*,unsigned int) ; 
 int BUFSIZ ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int SSL_OP_NO_RENEGOTIATION ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC18 (int,char*) ; 
 int /*<<< orphan*/  bio_s_out ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * keymatexportlabel ; 
 int keymatexportlen ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ s_brief ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC26(SSL *con)
{
    const char *str;
    X509 *peer;
    char buf[BUFSIZ];
#if !defined(OPENSSL_NO_NEXTPROTONEG)
    const unsigned char *next_proto_neg;
    unsigned next_proto_neg_len;
#endif
    unsigned char *exportedkeymat;
    int i;

    if (s_brief)
        FUNC21(con);

    FUNC4(bio_s_out, FUNC14(con));

    peer = FUNC11(con);
    if (peer != NULL) {
        FUNC1(bio_s_out, "Client certificate\n");
        FUNC5(bio_s_out, peer);
        FUNC19(bio_s_out, peer);
        FUNC17(peer);
        peer = NULL;
    }

    if (FUNC15(con, buf, sizeof(buf)) != NULL)
        FUNC1(bio_s_out, "Shared ciphers:%s\n", buf);
    str = FUNC6(FUNC9(con));
    FUNC24(bio_s_out, con);
#ifndef OPENSSL_NO_EC
    FUNC23(bio_s_out, con);
    FUNC22(bio_s_out, con, 0);
#endif
    FUNC20(bio_s_out, con);
    FUNC1(bio_s_out, "CIPHER is %s\n", (str != NULL) ? str : "(NONE)");

#if !defined(OPENSSL_NO_NEXTPROTONEG)
    FUNC8(con, &next_proto_neg, &next_proto_neg_len);
    if (next_proto_neg) {
        FUNC1(bio_s_out, "NEXTPROTO is ");
        FUNC2(bio_s_out, next_proto_neg, next_proto_neg_len);
        FUNC1(bio_s_out, "\n");
    }
#endif
#ifndef OPENSSL_NO_SRTP
    {
        SRTP_PROTECTION_PROFILE *srtp_profile
            = FUNC13(con);

        if (srtp_profile)
            FUNC1(bio_s_out, "SRTP Extension negotiated, profile=%s\n",
                       srtp_profile->name);
    }
#endif
    if (FUNC16(con))
        FUNC1(bio_s_out, "Reused session-id\n");
    FUNC1(bio_s_out, "Secure Renegotiation IS%s supported\n",
               FUNC12(con) ? "" : " NOT");
    if ((FUNC10(con) & SSL_OP_NO_RENEGOTIATION))
        FUNC1(bio_s_out, "Renegotiation is DISABLED\n");

    if (keymatexportlabel != NULL) {
        FUNC1(bio_s_out, "Keying material exporter:\n");
        FUNC1(bio_s_out, "    Label: '%s'\n", keymatexportlabel);
        FUNC1(bio_s_out, "    Length: %i bytes\n", keymatexportlen);
        exportedkeymat = FUNC18(keymatexportlen, "export key");
        if (!FUNC7(con, exportedkeymat,
                                        keymatexportlen,
                                        keymatexportlabel,
                                        FUNC25(keymatexportlabel),
                                        NULL, 0, 0)) {
            FUNC1(bio_s_out, "    Error\n");
        } else {
            FUNC1(bio_s_out, "    Keying material: ");
            for (i = 0; i < keymatexportlen; i++)
                FUNC1(bio_s_out, "%02X", exportedkeymat[i]);
            FUNC1(bio_s_out, "\n");
        }
        FUNC3(exportedkeymat);
    }

    (void)FUNC0(bio_s_out);
}