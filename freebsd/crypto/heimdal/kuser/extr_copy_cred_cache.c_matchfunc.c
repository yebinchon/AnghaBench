
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctx {int mcreds; int whichfields; } ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_boolean ;


 int FALSE ;
 int TRUE ;
 scalar_t__ krb5_compare_creds (int ,int ,int *,int const*) ;

__attribute__((used)) static krb5_boolean
matchfunc(krb5_context context, void *ptr, const krb5_creds *creds)
{
    struct ctx *ctx = ptr;
    if (krb5_compare_creds(context, ctx->whichfields, &ctx->mcreds, creds))
 return TRUE;
    return FALSE;
}
