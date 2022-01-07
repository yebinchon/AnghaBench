
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int db; TYPE_1__* db_meth; } ;
typedef TYPE_2__ X509V3_CTX ;
struct TYPE_4__ {char* (* get_string ) (int ,char const*,char const*) ;} ;


 int X509V3_F_X509V3_GET_STRING ;
 int X509V3_R_OPERATION_NOT_DEFINED ;
 int X509V3err (int ,int ) ;
 char* stub1 (int ,char const*,char const*) ;

char *X509V3_get_string(X509V3_CTX *ctx, const char *name, const char *section)
{
    if (!ctx->db || !ctx->db_meth || !ctx->db_meth->get_string) {
        X509V3err(X509V3_F_X509V3_GET_STRING, X509V3_R_OPERATION_NOT_DEFINED);
        return ((void*)0);
    }
    if (ctx->db_meth->get_string)
        return ctx->db_meth->get_string(ctx->db, name, section);
    return ((void*)0);
}
