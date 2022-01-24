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
struct dnsc_env {int dummy; } ;
struct comm_reply {int is_dnscrypted; int /*<<< orphan*/  nmkey; int /*<<< orphan*/  client_nonce; int /*<<< orphan*/ * dnsc_cert; struct comm_point* c; } ;
struct comm_point {int /*<<< orphan*/  buffer; int /*<<< orphan*/  dnscrypt; } ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (struct comm_reply*) ; 
 int /*<<< orphan*/ * FUNC1 (struct dnsc_env*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dnsc_env*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

int
FUNC5(struct dnsc_env* dnscenv,
                           struct comm_reply* repinfo)
{
    struct comm_point* c = repinfo->c;

    repinfo->is_dnscrypted = 0;
    if( !c->dnscrypt ) {
        return 1;
    }
    // Attempt to decrypt the query. If it is not crypted, we may still need
    // to serve the certificate.
    FUNC4(VERB_ALGO, "handle request called on DNSCrypt socket");
    if ((repinfo->dnsc_cert = FUNC1(dnscenv, c->buffer)) != NULL) {
        if(FUNC2(dnscenv,
                                   repinfo->dnsc_cert,
                                   repinfo->client_nonce,
                                   repinfo->nmkey,
                                   c->buffer) != 0){
            FUNC4(VERB_ALGO, "dnscrypt: Failed to uncurve");
            FUNC0(repinfo);
            return 0;
        }
        repinfo->is_dnscrypted = 1;
        FUNC3(c->buffer);
    }
    return 1;
}