
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int parse_cb; void* parse_arg; int free_cb; int add_cb; void* add_arg; } ;
typedef TYPE_1__ custom_ext_parse_cb_wrap ;
typedef int custom_ext_parse_cb ;
typedef int custom_ext_free_cb ;
typedef TYPE_1__ custom_ext_add_cb_wrap ;
typedef int custom_ext_add_cb ;
typedef int SSL_CTX ;
typedef int ENDPOINT ;


 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int add_custom_ext_intern (int *,int ,unsigned int,unsigned int,int ,int ,TYPE_1__*,int ,TYPE_1__*) ;
 int custom_ext_add_old_cb_wrap ;
 int custom_ext_free_old_cb_wrap ;
 int custom_ext_parse_old_cb_wrap ;

__attribute__((used)) static int add_old_custom_ext(SSL_CTX *ctx, ENDPOINT role,
                              unsigned int ext_type,
                              unsigned int context,
                              custom_ext_add_cb add_cb,
                              custom_ext_free_cb free_cb,
                              void *add_arg,
                              custom_ext_parse_cb parse_cb, void *parse_arg)
{
    custom_ext_add_cb_wrap *add_cb_wrap
        = OPENSSL_malloc(sizeof(*add_cb_wrap));
    custom_ext_parse_cb_wrap *parse_cb_wrap
        = OPENSSL_malloc(sizeof(*parse_cb_wrap));
    int ret;

    if (add_cb_wrap == ((void*)0) || parse_cb_wrap == ((void*)0)) {
        OPENSSL_free(add_cb_wrap);
        OPENSSL_free(parse_cb_wrap);
        return 0;
    }

    add_cb_wrap->add_arg = add_arg;
    add_cb_wrap->add_cb = add_cb;
    add_cb_wrap->free_cb = free_cb;
    parse_cb_wrap->parse_arg = parse_arg;
    parse_cb_wrap->parse_cb = parse_cb;

    ret = add_custom_ext_intern(ctx, role, ext_type,
                                context,
                                custom_ext_add_old_cb_wrap,
                                custom_ext_free_old_cb_wrap,
                                add_cb_wrap,
                                custom_ext_parse_old_cb_wrap,
                                parse_cb_wrap);

    if (!ret) {
        OPENSSL_free(add_cb_wrap);
        OPENSSL_free(parse_cb_wrap);
    }

    return ret;
}
