
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hx509_revoke_ctx ;
typedef int hx509_context ;
struct TYPE_8__ {int * path; int crl; int last_modfied; } ;
struct TYPE_6__ {size_t len; TYPE_3__* val; } ;
struct TYPE_7__ {TYPE_1__ crls; } ;


 int ENOMEM ;
 int HX509_UNSUPPORTED_OPERATION ;
 int free (int *) ;
 int hx509_clear_error_string (int ) ;
 int hx509_set_error_string (int ,int ,int,char*,char const*) ;
 int load_crl (char const*,int *,int *) ;
 int memset (TYPE_3__*,int ,int) ;
 void* realloc (TYPE_3__*,int) ;
 scalar_t__ strcmp (int *,char const*) ;
 int * strdup (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

int
hx509_revoke_add_crl(hx509_context context,
       hx509_revoke_ctx ctx,
       const char *path)
{
    void *data;
    size_t i;
    int ret;

    if (strncmp(path, "FILE:", 5) != 0) {
 hx509_set_error_string(context, 0, HX509_UNSUPPORTED_OPERATION,
          "unsupport type in %s", path);
 return HX509_UNSUPPORTED_OPERATION;
    }


    path += 5;

    for (i = 0; i < ctx->crls.len; i++) {
 if (strcmp(ctx->crls.val[0].path, path) == 0)
     return 0;
    }

    data = realloc(ctx->crls.val,
     (ctx->crls.len + 1) * sizeof(ctx->crls.val[0]));
    if (data == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }
    ctx->crls.val = data;

    memset(&ctx->crls.val[ctx->crls.len], 0, sizeof(ctx->crls.val[0]));

    ctx->crls.val[ctx->crls.len].path = strdup(path);
    if (ctx->crls.val[ctx->crls.len].path == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    ret = load_crl(path,
     &ctx->crls.val[ctx->crls.len].last_modfied,
     &ctx->crls.val[ctx->crls.len].crl);
    if (ret) {
 free(ctx->crls.val[ctx->crls.len].path);
 return ret;
    }

    ctx->crls.len++;

    return ret;
}
