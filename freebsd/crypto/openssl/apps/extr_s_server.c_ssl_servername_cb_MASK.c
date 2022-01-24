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
struct TYPE_2__ {int extension_error; int /*<<< orphan*/ * biodebug; int /*<<< orphan*/ * servername; } ;
typedef  TYPE_1__ tlsextctx ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int SSL_TLSEXT_ERR_NOACK ; 
 int SSL_TLSEXT_ERR_OK ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TLSEXT_NAMETYPE_host_name ; 
 int /*<<< orphan*/ * ctx2 ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 scalar_t__ FUNC4 (unsigned char) ; 
 scalar_t__ FUNC5 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(SSL *s, int *ad, void *arg)
{
    tlsextctx *p = (tlsextctx *) arg;
    const char *servername = FUNC1(s, TLSEXT_NAMETYPE_host_name);

    if (servername != NULL && p->biodebug != NULL) {
        const char *cp = servername;
        unsigned char uc;

        FUNC0(p->biodebug, "Hostname in TLS extension: \"");
        while ((uc = *cp++) != 0)
            FUNC0(p->biodebug,
                       FUNC3(uc) && FUNC4(uc) ? "%c" : "\\x%02x", uc);
        FUNC0(p->biodebug, "\"\n");
    }

    if (p->servername == NULL)
        return SSL_TLSEXT_ERR_NOACK;

    if (servername != NULL) {
        if (FUNC5(servername, p->servername))
            return p->extension_error;
        if (ctx2 != NULL) {
            FUNC0(p->biodebug, "Switching server context.\n");
            FUNC2(s, ctx2);
        }
    }
    return SSL_TLSEXT_ERR_OK;
}