
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ gss_name_t ;
typedef int gss_cred_id_t ;
struct TYPE_3__ {int length; int value; } ;
typedef TYPE_1__ gss_buffer_desc ;
typedef int gss_OID_set ;
typedef int gss_OID ;
typedef int OM_uint32 ;


 scalar_t__ GSS_C_NO_NAME ;
 int GSS_C_NO_OID ;
 scalar_t__ GSS_ERROR (int ) ;
 int errx (int,char*) ;
 int exit (int) ;
 int gss_acquire_cred (int *,scalar_t__,int ,int ,int,int *,int *,int *) ;
 int gss_import_name (int *,TYPE_1__*,int ,scalar_t__*) ;
 int gss_release_cred (int *,int *) ;
 int gss_release_name (int *,scalar_t__*) ;
 int gssapi_err (int ,int ,int ) ;
 int print_time (int ) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static gss_cred_id_t
acquire_cred_service(const char *service,
       gss_OID nametype,
       gss_OID_set oidset,
       int flags)
{
    OM_uint32 major_status, minor_status;
    gss_cred_id_t cred_handle;
    OM_uint32 time_rec;
    gss_buffer_desc name_buffer;
    gss_name_t name = GSS_C_NO_NAME;

    if (service) {
 name_buffer.value = rk_UNCONST(service);
 name_buffer.length = strlen(service);

 major_status = gss_import_name(&minor_status,
           &name_buffer,
           nametype,
           &name);
 if (GSS_ERROR(major_status))
     errx(1, "import_name failed");
    }

    major_status = gss_acquire_cred(&minor_status,
        name,
        0,
        oidset,
        flags,
        &cred_handle,
        ((void*)0),
        &time_rec);
    if (GSS_ERROR(major_status)) {
 warnx("acquire_cred failed: %s",
      gssapi_err(major_status, minor_status, GSS_C_NO_OID));
    } else {
 print_time(time_rec);
 gss_release_cred(&minor_status, &cred_handle);
    }

    if (name != GSS_C_NO_NAME)
 gss_release_name(&minor_status, &name);

    if (GSS_ERROR(major_status))
 exit(1);

    return cred_handle;
}
