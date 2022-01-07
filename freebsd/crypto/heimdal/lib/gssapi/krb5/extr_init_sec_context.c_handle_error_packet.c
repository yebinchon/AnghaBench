
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int p ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_11__ {unsigned char* data; int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int int32_t ;
typedef TYPE_2__* gsskrb5_ctx ;
struct TYPE_13__ {int stime; } ;
struct TYPE_12__ {int more_flags; int state; int target; int ccache; } ;
typedef TYPE_3__ KRB_ERROR ;


 int INITIATOR_RESTART ;
 scalar_t__ KRB5KRB_AP_ERR_SKEW ;
 int RETRIED ;
 int free_KRB_ERROR (TYPE_3__*) ;
 int krb5_cc_set_config (int ,int ,int ,char*,TYPE_1__*) ;
 scalar_t__ krb5_error_from_rd_error (int ,TYPE_3__*,int *) ;
 scalar_t__ krb5_rd_error (int ,TYPE_1__*,TYPE_3__*) ;
 int time (int *) ;

__attribute__((used)) static krb5_error_code
handle_error_packet(krb5_context context,
      gsskrb5_ctx ctx,
      krb5_data indata)
{
    krb5_error_code kret;
    KRB_ERROR error;

    kret = krb5_rd_error(context, &indata, &error);
    if (kret == 0) {
 kret = krb5_error_from_rd_error(context, &error, ((void*)0));


 if (kret == KRB5KRB_AP_ERR_SKEW) {
     krb5_data timedata;
     unsigned char p[4];
     int32_t t = error.stime - time(((void*)0));

     p[0] = (t >> 24) & 0xFF;
     p[1] = (t >> 16) & 0xFF;
     p[2] = (t >> 8) & 0xFF;
     p[3] = (t >> 0) & 0xFF;

     timedata.data = p;
     timedata.length = sizeof(p);

     krb5_cc_set_config(context, ctx->ccache, ctx->target,
          "time-offset", &timedata);

     if ((ctx->more_flags & RETRIED) == 0)
   ctx->state = INITIATOR_RESTART;
     ctx->more_flags |= RETRIED;
 }
 free_KRB_ERROR (&error);
    }
    return kret;
}
