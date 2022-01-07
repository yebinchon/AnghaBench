
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;
typedef int OM_uint32 ;


 int GSS_C_GSS_CODE ;
 int GSS_C_MECH_CODE ;
 int GSS_C_NO_OID ;
 int gss_error (int ,int ,int ,int ) ;

__attribute__((used)) static void
gss_print_errors (krb5_context contextp,
    OM_uint32 maj_stat, OM_uint32 min_stat)
{
    gss_error(contextp, GSS_C_NO_OID, GSS_C_GSS_CODE, maj_stat);
    gss_error(contextp, GSS_C_NO_OID, GSS_C_MECH_CODE, min_stat);
}
