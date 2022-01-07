
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct renew_ctx {int principal; int ccache; int context; int ticket_life; } ;
typedef scalar_t__ krb5_error_code ;


 scalar_t__ do_afslog ;
 int get_new_tickets (int ,int ,int ,int ,int ) ;
 scalar_t__ k_hasafs () ;
 int krb5_afslog (int ,int ,int *,int *) ;
 scalar_t__ renew_validate (int ,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ renewable_flag ;
 int server_str ;
 int ticket_lifetime (int ,int ,int ,int ) ;
 int validate_flag ;

__attribute__((used)) static time_t
renew_func(void *ptr)
{
    struct renew_ctx *ctx = ptr;
    krb5_error_code ret;
    time_t expire;
    int new_tickets = 0;

    if (renewable_flag) {
 ret = renew_validate(ctx->context, renewable_flag, validate_flag,
        ctx->ccache, server_str, ctx->ticket_life);
 if (ret)
     new_tickets = 1;
    } else
 new_tickets = 1;

    if (new_tickets)
 get_new_tickets(ctx->context, ctx->principal,
   ctx->ccache, ctx->ticket_life, 0);


    if(do_afslog && k_hasafs())
 krb5_afslog(ctx->context, ctx->ccache, ((void*)0), ((void*)0));


    expire = ticket_lifetime(ctx->context, ctx->ccache, ctx->principal,
        server_str) / 2;
    return expire + 1;
}
