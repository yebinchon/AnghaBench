
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nc; scalar_t__ stale; int * algo; int opaque; int nonce; int qop; int realm; int scheme; } ;
typedef TYPE_1__ http_auth_challenge_t ;


 int HTTPAS_UNKNOWN ;

__attribute__((used)) static void
init_http_auth_challenge(http_auth_challenge_t *b)
{
 b->scheme = HTTPAS_UNKNOWN;
 b->realm = b->qop = b->nonce = b->opaque = b->algo = ((void*)0);
 b->stale = b->nc = 0;
}
