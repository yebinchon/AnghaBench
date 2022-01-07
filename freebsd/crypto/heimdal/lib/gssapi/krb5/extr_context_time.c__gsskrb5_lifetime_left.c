
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_timestamp ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_C_INDEFINITE ;
 scalar_t__ GSS_S_COMPLETE ;
 scalar_t__ GSS_S_FAILURE ;
 scalar_t__ krb5_timeofday (int ,scalar_t__*) ;

OM_uint32
_gsskrb5_lifetime_left(OM_uint32 *minor_status,
         krb5_context context,
         OM_uint32 lifetime,
         OM_uint32 *lifetime_rec)
{
    krb5_timestamp timeret;
    krb5_error_code kret;

    if (lifetime == 0) {
 *lifetime_rec = GSS_C_INDEFINITE;
 return GSS_S_COMPLETE;
    }

    kret = krb5_timeofday(context, &timeret);
    if (kret) {
 *minor_status = kret;
 return GSS_S_FAILURE;
    }

    if (lifetime < timeret)
 *lifetime_rec = 0;
    else
 *lifetime_rec = lifetime - timeret;

    return GSS_S_COMPLETE;
}
