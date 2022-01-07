
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* s3; } ;
struct TYPE_5__ {int * peer_sigalgs; } ;
struct TYPE_6__ {TYPE_1__ tmp; } ;
typedef TYPE_3__ SSL ;


 int OPENSSL_free (int *) ;

__attribute__((used)) static int init_sig_algs(SSL *s, unsigned int context)
{

    OPENSSL_free(s->s3->tmp.peer_sigalgs);
    s->s3->tmp.peer_sigalgs = ((void*)0);

    return 1;
}
