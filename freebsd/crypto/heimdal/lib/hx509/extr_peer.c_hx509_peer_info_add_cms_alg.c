
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hx509_peer_info ;
typedef int hx509_context ;
struct TYPE_3__ {int len; int * val; } ;
typedef int AlgorithmIdentifier ;


 int ENOMEM ;
 int copy_AlgorithmIdentifier (int const*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 void* realloc (int *,int) ;

int
hx509_peer_info_add_cms_alg(hx509_context context,
       hx509_peer_info peer,
       const AlgorithmIdentifier *val)
{
    void *ptr;
    int ret;

    ptr = realloc(peer->val, sizeof(peer->val[0]) * (peer->len + 1));
    if (ptr == ((void*)0)) {
 hx509_set_error_string(context, 0, ENOMEM, "out of memory");
 return ENOMEM;
    }
    peer->val = ptr;
    ret = copy_AlgorithmIdentifier(val, &peer->val[peer->len]);
    if (ret == 0)
 peer->len += 1;
    else
 hx509_set_error_string(context, 0, ret, "out of memory");
    return ret;
}
