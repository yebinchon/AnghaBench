
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_peer_info ;
struct TYPE_3__ {size_t len; int * val; } ;


 int free (int *) ;
 int free_AlgorithmIdentifier (int *) ;

__attribute__((used)) static void
free_cms_alg(hx509_peer_info peer)
{
    if (peer->val) {
 size_t i;
 for (i = 0; i < peer->len; i++)
     free_AlgorithmIdentifier(&peer->val[i]);
 free(peer->val);
 peer->val = ((void*)0);
 peer->len = 0;
    }
}
