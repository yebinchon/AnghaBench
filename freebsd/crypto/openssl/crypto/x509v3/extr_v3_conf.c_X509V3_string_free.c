
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int db; TYPE_1__* db_meth; } ;
typedef TYPE_2__ X509V3_CTX ;
struct TYPE_4__ {int (* free_string ) (int ,char*) ;} ;


 int stub1 (int ,char*) ;

void X509V3_string_free(X509V3_CTX *ctx, char *str)
{
    if (!str)
        return;
    if (ctx->db_meth->free_string)
        ctx->db_meth->free_string(ctx->db, str);
}
