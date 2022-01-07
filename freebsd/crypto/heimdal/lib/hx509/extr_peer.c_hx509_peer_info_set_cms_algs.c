
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hx509_peer_info ;
typedef int hx509_context ;
struct TYPE_4__ {size_t len; int * val; } ;
typedef int AlgorithmIdentifier ;


 int ENOMEM ;
 int * calloc (size_t,int) ;
 int copy_AlgorithmIdentifier (int const*,int *) ;
 int free_cms_alg (TYPE_1__*) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*) ;

int
hx509_peer_info_set_cms_algs(hx509_context context,
        hx509_peer_info peer,
        const AlgorithmIdentifier *val,
        size_t len)
{
    size_t i;

    free_cms_alg(peer);

    peer->val = calloc(len, sizeof(*peer->val));
    if (peer->val == ((void*)0)) {
 peer->len = 0;
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    peer->len = len;
    for (i = 0; i < len; i++) {
 int ret;
 ret = copy_AlgorithmIdentifier(&val[i], &peer->val[i]);
 if (ret) {
     hx509_clear_error_string(context);
     free_cms_alg(peer);
     return ret;
 }
    }
    return 0;
}
