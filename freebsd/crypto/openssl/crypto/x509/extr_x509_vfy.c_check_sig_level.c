
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* param; } ;
typedef TYPE_2__ X509_STORE_CTX ;
typedef int X509 ;
struct TYPE_4__ {int auth_level; } ;


 int NUM_AUTH_LEVELS ;
 int X509_get_signature_info (int *,int *,int *,int*,int *) ;
 int* minbits_table ;

__attribute__((used)) static int check_sig_level(X509_STORE_CTX *ctx, X509 *cert)
{
    int secbits = -1;
    int level = ctx->param->auth_level;

    if (level <= 0)
        return 1;
    if (level > NUM_AUTH_LEVELS)
        level = NUM_AUTH_LEVELS;

    if (!X509_get_signature_info(cert, ((void*)0), ((void*)0), &secbits, ((void*)0)))
        return 0;

    return secbits >= minbits_table[level - 1];
}
