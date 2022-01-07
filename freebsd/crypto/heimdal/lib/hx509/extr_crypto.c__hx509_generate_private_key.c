
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hx509_private_key_ops {int (* generate_private_key ) (int ,struct hx509_generate_private_context*,int *) ;} ;
struct hx509_generate_private_context {int key_oid; } ;
typedef int * hx509_private_key ;
typedef int hx509_context ;


 int HX509_SIG_ALG_NO_SUPPORTED ;
 int hx509_clear_error_string (int ) ;
 struct hx509_private_key_ops* hx509_find_private_alg (int ) ;
 int hx509_private_key_free (int **) ;
 int hx509_private_key_init (int **,struct hx509_private_key_ops*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int stub1 (int ,struct hx509_generate_private_context*,int *) ;

int
_hx509_generate_private_key(hx509_context context,
       struct hx509_generate_private_context *ctx,
       hx509_private_key *private_key)
{
    struct hx509_private_key_ops *ops;
    int ret;

    *private_key = ((void*)0);

    ops = hx509_find_private_alg(ctx->key_oid);
    if (ops == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_SIG_ALG_NO_SUPPORTED;
    }

    ret = hx509_private_key_init(private_key, ops, ((void*)0));
    if (ret) {
 hx509_set_error_string(context, 0, ret, "out of memory");
 return ret;
    }

    ret = (*ops->generate_private_key)(context, ctx, *private_key);
    if (ret)
 hx509_private_key_free(private_key);

    return ret;
}
