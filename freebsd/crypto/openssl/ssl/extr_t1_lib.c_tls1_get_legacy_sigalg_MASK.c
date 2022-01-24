#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_5__* cert; TYPE_3__* s3; scalar_t__ server; } ;
struct TYPE_16__ {int amask; } ;
struct TYPE_15__ {TYPE_4__* pkeys; TYPE_4__* key; } ;
struct TYPE_14__ {int /*<<< orphan*/ * privatekey; } ;
struct TYPE_12__ {TYPE_1__* new_cipher; } ;
struct TYPE_13__ {TYPE_2__ tmp; } ;
struct TYPE_11__ {int algorithm_auth; } ;
typedef  TYPE_6__ SSL_CERT_LOOKUP ;
typedef  TYPE_7__ SSL ;
typedef  int /*<<< orphan*/  SIGALG_LOOKUP ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int SSL_PKEY_GOST01 ; 
 int SSL_PKEY_GOST12_512 ; 
 size_t SSL_PKEY_NUM ; 
 int SSL_PKEY_RSA ; 
 scalar_t__ FUNC1 (TYPE_7__ const*) ; 
 scalar_t__ SSL_aGOST01 ; 
 int /*<<< orphan*/  const legacy_rsa_sigalg ; 
 TYPE_6__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * tls_default_sigalg ; 

__attribute__((used)) static const SIGALG_LOOKUP *FUNC5(const SSL *s, int idx)
{
    if (idx == -1) {
        if (s->server) {
            size_t i;

            /* Work out index corresponding to ciphersuite */
            for (i = 0; i < SSL_PKEY_NUM; i++) {
                const SSL_CERT_LOOKUP *clu = FUNC2(i);

                if (clu->amask & s->s3->tmp.new_cipher->algorithm_auth) {
                    idx = i;
                    break;
                }
            }

            /*
             * Some GOST ciphersuites allow more than one signature algorithms
             * */
            if (idx == SSL_PKEY_GOST01 && s->s3->tmp.new_cipher->algorithm_auth != SSL_aGOST01) {
                int real_idx;

                for (real_idx = SSL_PKEY_GOST12_512; real_idx >= SSL_PKEY_GOST01;
                     real_idx--) {
                    if (s->cert->pkeys[real_idx].privatekey != NULL) {
                        idx = real_idx;
                        break;
                    }
                }
            }
        } else {
            idx = s->cert->key - s->cert->pkeys;
        }
    }
    if (idx < 0 || idx >= (int)FUNC0(tls_default_sigalg))
        return NULL;
    if (FUNC1(s) || idx != SSL_PKEY_RSA) {
        const SIGALG_LOOKUP *lu = FUNC4(tls_default_sigalg[idx]);

        if (!FUNC3(lu, NULL))
            return NULL;
        return lu;
    }
    return &legacy_rsa_sigalg;
}