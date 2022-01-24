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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int DTLS1_BAD_VER ; 
 int DTLS1_VERSION ; 
 int SSL3_VERSION ; 
 int TLS1_1_VERSION ; 
 int TLS1_2_VERSION ; 
 int TLS1_3_VERSION ; 
 int TLS1_VERSION ; 
 int /*<<< orphan*/  alert_types ; 
 int /*<<< orphan*/  handshakes ; 
 char* FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ssl_versions ; 

void FUNC3(int write_p, int version, int content_type, const void *buf,
            size_t len, SSL *ssl, void *arg)
{
    BIO *bio = arg;
    const char *str_write_p = write_p ? ">>>" : "<<<";
    const char *str_version = FUNC2(version, ssl_versions, "???");
    const char *str_content_type = "", *str_details1 = "", *str_details2 = "";
    const unsigned char* bp = buf;

    if (version == SSL3_VERSION ||
        version == TLS1_VERSION ||
        version == TLS1_1_VERSION ||
        version == TLS1_2_VERSION ||
        version == TLS1_3_VERSION ||
        version == DTLS1_VERSION || version == DTLS1_BAD_VER) {
        switch (content_type) {
        case 20:
            str_content_type = ", ChangeCipherSpec";
            break;
        case 21:
            str_content_type = ", Alert";
            str_details1 = ", ???";
            if (len == 2) {
                switch (bp[0]) {
                case 1:
                    str_details1 = ", warning";
                    break;
                case 2:
                    str_details1 = ", fatal";
                    break;
                }
                str_details2 = FUNC2((int)bp[1], alert_types, " ???");
            }
            break;
        case 22:
            str_content_type = ", Handshake";
            str_details1 = "???";
            if (len > 0)
                str_details1 = FUNC2((int)bp[0], handshakes, "???");
            break;
        case 23:
            str_content_type = ", ApplicationData";
            break;
#ifndef OPENSSL_NO_HEARTBEATS
        case 24:
            str_details1 = ", Heartbeat";

            if (len > 0) {
                switch (bp[0]) {
                case 1:
                    str_details1 = ", HeartbeatRequest";
                    break;
                case 2:
                    str_details1 = ", HeartbeatResponse";
                    break;
                }
            }
            break;
#endif
        }
    }

    FUNC1(bio, "%s %s%s [length %04lx]%s%s\n", str_write_p, str_version,
               str_content_type, (unsigned long)len, str_details1,
               str_details2);

    if (len > 0) {
        size_t num, i;

        FUNC1(bio, "   ");
        num = len;
        for (i = 0; i < num; i++) {
            if (i % 16 == 0 && i > 0)
                FUNC1(bio, "\n   ");
            FUNC1(bio, " %02x", ((const unsigned char *)buf)[i]);
        }
        if (i < len)
            FUNC1(bio, " ...");
        FUNC1(bio, "\n");
    }
    (void)FUNC0(bio);
}