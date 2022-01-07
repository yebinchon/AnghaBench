
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int sig_idx; } ;
struct TYPE_12__ {TYPE_2__* cert; } ;
struct TYPE_11__ {TYPE_1__* pkeys; } ;
struct TYPE_10__ {int privatekey; int x509; } ;
typedef TYPE_3__ SSL ;
typedef TYPE_4__ SIGALG_LOOKUP ;


 int check_cert_usable (TYPE_3__*,TYPE_4__ const*,int ,int ) ;
 int ssl_has_cert (TYPE_3__*,int) ;

__attribute__((used)) static int has_usable_cert(SSL *s, const SIGALG_LOOKUP *sig, int idx)
{

    if (idx == -1)
        idx = sig->sig_idx;
    if (!ssl_has_cert(s, idx))
        return 0;

    return check_cert_usable(s, sig, s->cert->pkeys[idx].x509,
                             s->cert->pkeys[idx].privatekey);
}
