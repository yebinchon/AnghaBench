
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hx509_private_key_ops {int (* import ) (int ,TYPE_1__ const*,void const*,size_t,int ,int *) ;} ;
typedef int * hx509_private_key ;
typedef int hx509_key_format_t ;
typedef int hx509_context ;
struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_SIG_ALG_NO_SUPPORTED ;
 int hx509_clear_error_string (int ) ;
 struct hx509_private_key_ops* hx509_find_private_alg (int *) ;
 int hx509_private_key_free (int **) ;
 int hx509_private_key_init (int **,struct hx509_private_key_ops*,int *) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int stub1 (int ,TYPE_1__ const*,void const*,size_t,int ,int *) ;

int
hx509_parse_private_key(hx509_context context,
    const AlgorithmIdentifier *keyai,
    const void *data,
    size_t len,
    hx509_key_format_t format,
    hx509_private_key *private_key)
{
    struct hx509_private_key_ops *ops;
    int ret;

    *private_key = ((void*)0);

    ops = hx509_find_private_alg(&keyai->algorithm);
    if (ops == ((void*)0)) {
 hx509_clear_error_string(context);
 return HX509_SIG_ALG_NO_SUPPORTED;
    }

    ret = hx509_private_key_init(private_key, ops, ((void*)0));
    if (ret) {
 hx509_set_error_string(context, 0, ret, "out of memory");
 return ret;
    }

    ret = (*ops->import)(context, keyai, data, len, format, *private_key);
    if (ret)
 hx509_private_key_free(private_key);

    return ret;
}
