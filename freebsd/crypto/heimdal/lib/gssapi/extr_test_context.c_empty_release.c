
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_name_t ;
typedef int gss_ctx_id_t ;
typedef int gss_cred_id_t ;
typedef int gss_OID_set ;
typedef int OM_uint32 ;


 int GSS_C_NO_CONTEXT ;
 int GSS_C_NO_CREDENTIAL ;
 int GSS_C_NO_NAME ;
 int GSS_C_NO_OID_SET ;
 int gss_delete_sec_context (int *,int *,int *) ;
 int gss_release_cred (int *,int *) ;
 int gss_release_name (int *,int *) ;
 int gss_release_oid_set (int *,int *) ;

__attribute__((used)) static void
empty_release(void)
{
    gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
    gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
    gss_name_t name = GSS_C_NO_NAME;
    gss_OID_set oidset = GSS_C_NO_OID_SET;
    OM_uint32 junk;

    gss_delete_sec_context(&junk, &ctx, ((void*)0));
    gss_release_cred(&junk, &cred);
    gss_release_name(&junk, &name);
    gss_release_oid_set(&junk, &oidset);
}
