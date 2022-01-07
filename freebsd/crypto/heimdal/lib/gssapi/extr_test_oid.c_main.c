
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int OM_uint32 ;


 int GSS_C_NT_EXPORT_NAME ;
 scalar_t__ GSS_ERROR (int ) ;
 int GSS_KRB5_MECHANISM ;
 int errx (int,char*) ;
 int gss_oid_to_str (int *,int ,TYPE_1__*) ;
 int gss_release_buffer (int *,TYPE_1__*) ;
 int strncmp (int ,char*,int ) ;

int
main(int argc, char **argv)
{
    OM_uint32 minor_status, maj_stat;
    gss_buffer_desc data;
    int ret;

    maj_stat = gss_oid_to_str(&minor_status, GSS_KRB5_MECHANISM, &data);
    if (GSS_ERROR(maj_stat))
 errx(1, "gss_oid_to_str failed");

    ret = strncmp(data.value, "1 2 840 113554 1 2 2", data.length);
    gss_release_buffer(&maj_stat, &data);
    if (ret)
 return 1;

    maj_stat = gss_oid_to_str(&minor_status, GSS_C_NT_EXPORT_NAME, &data);
    if (GSS_ERROR(maj_stat))
 errx(1, "gss_oid_to_str failed");

    ret = strncmp(data.value, "1 3 6 1 5 6 4", data.length);
    gss_release_buffer(&maj_stat, &data);
    if (ret)
 return 1;

    return 0;
}
