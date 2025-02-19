
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_4__ {scalar_t__ value; scalar_t__ length; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID ;
typedef scalar_t__ OM_uint32 ;


 int GSS_ERROR (scalar_t__) ;
 scalar_t__ gss_display_status (scalar_t__*,scalar_t__,scalar_t__,int ,scalar_t__*,TYPE_1__*) ;
 int gss_release_buffer (scalar_t__*,TYPE_1__*) ;
 int krb5_warnx (int ,char*,int,char*) ;

__attribute__((used)) static void
gss_error(krb5_context contextp,
   gss_OID mech, OM_uint32 type, OM_uint32 error)
{
    OM_uint32 new_stat;
    OM_uint32 msg_ctx = 0;
    gss_buffer_desc status_string;
    OM_uint32 ret;

    do {
 ret = gss_display_status (&new_stat,
      error,
      type,
      mech,
      &msg_ctx,
      &status_string);
 krb5_warnx(contextp, "%.*s",
     (int)status_string.length,
     (char *)status_string.value);
 gss_release_buffer (&new_stat, &status_string);
    } while (!GSS_ERROR(ret) && msg_ctx != 0);
}
